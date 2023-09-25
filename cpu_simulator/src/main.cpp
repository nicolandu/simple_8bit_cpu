#include <iostream>
#include <vector>

#include <string>
#include <fstream>
#include <streambuf>

#include <filesystem>

#include "cxxopts.hpp"

#include "constants.h"
#include "run_program.h"

int main(int argc, char* argv[])
{
    cxxopts::Options options("cpu_simulator", "Simulator for my custom 8-bit 64k CPU");

    options.add_options()
        ("a,ina", "Read INA from file", cxxopts::value<std::string>()) // ina (optional)
        ("b,inb", "Read INB from file", cxxopts::value<std::string>()) // inb (optional)
        ("file", "Machine code file to execute", cxxopts::value<std::string>()) // file to execute
        ;

    options.parse_positional({ "file" }); // set options to parse as positional

    auto result = options.parse(argc, argv); // parse arguments


    if (result.count("help"))
    {
        std::cout << options.help() << std::endl;
        exit(0);
    }

    if (!result.count("file"))
    {
        std::cout << "\nFilename required. Exiting...\n";
        exit(EXIT_FAILURE);
    }

    std::ifstream program_file(result["file"].as<std::string>(), (std::ios::in | std::ios::binary));

    if (!program_file)
    {
        std::cout << "\nCould not open program file \"" << result["file"].as<std::string>() << "\". Exiting...\n";
        exit(EXIT_FAILURE);
    }

    auto program_file_size = std::filesystem::file_size(result["file"].as<std::string>());

    auto program_size = std::min(program_file_size, static_cast<uintmax_t>(ROM_SIZE));

    std::vector<uint8_t> mem(MEM_SIZE);

    program_file.read(reinterpret_cast<char*>(&mem[ROM_START]), program_size); // read into ROM (0x8000-FFFF) (read smallest amount between file size and ROM size)
    program_file.close();





    std::vector<uint8_t> ina; // create vector with size 0, will be filled if a non-empty file was given

    if (result.count("ina"))
    {
        std::ifstream ina_file(result["ina"].as<std::string>(), (std::ios::in | std::ios::binary));


        auto ina_file_size = std::filesystem::file_size(result["ina"].as<std::string>());


        if (ina_file_size) // do not read if file is empty, as element 0, which might not be there, is dereferenced by doing so
        {
            ina.resize(ina_file_size);
            ina_file.read(reinterpret_cast<char*>(&ina[0]), ina_file_size); // read into ina vector
            ina_file.close();
        }
    }







    std::vector<uint8_t> inb; // create vector with size 0, will be filled if a non-empty file was given

    if (result.count("inb"))
    {
        std::ifstream inb_file(result["inb"].as<std::string>(), (std::ios::in | std::ios::binary));


        auto inb_file_size = std::filesystem::file_size(result["inb"].as<std::string>());


        if (inb_file_size) // do not read if file is empty, as element 0, which might not be there, is dereferenced by doing so
        {
            inb.resize(inb_file_size);
            inb_file.read(reinterpret_cast<char*>(&ina[0]), inb_file_size); // read into ina vector
            inb_file.close();
        }
    }
    
    
    run_program(mem, ina, inb); // pass ina and inb, which may be empty

}