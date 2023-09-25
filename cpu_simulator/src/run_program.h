#pragma once

#include <vector>
#include <string>

void run_program(std::vector<uint8_t>& mem, const std::vector<uint8_t>& ina, const std::vector<uint8_t>& inb); // ina and inb are const (read-only streams)