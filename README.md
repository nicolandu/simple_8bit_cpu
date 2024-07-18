```
                              High-Quality Art Below
                                                                   █
                                                                   █
        ▄█████▄                                                   ▐█
       █      ▀▀█████▄      █                          █████      ▐█
       █              █                    ███      ████    █     ██     █████
       ▄███▄                         ███ ▄█  █       ██     █▌    █▌   ██▀    █
           ███████▄          █    ███   ██           ██      █    █▌  ███████
            █     ██        ▐█    ██    █▀    █      ███▌    ▌    █▌  ▀██
            ██      █       ██    █     █             █  ████     █▌    ▀██████
              ██████▀       █     █                   █           █
                                                      █
                                                      █▄
                                                      ██
                                                       █                         █
                                                                    █      ███   █
                        ▄▄███                            ███        █       ██▄ ████
                   ████▀▀    ██  █          █           ██  ██      █             █
        ▄████     █          ▐█  ██         █            ▀████      ██       █    █
       ██           █       ██    █         █            ██   ██     ████    ▐█   █
      █             █    ███      █         █             █     █    ▀█  ██   ▐▌  █
      █              ███▄         █▌       █               ████       ▐████
      ██             █             █      █
        ██████████████              ██████
                     █
```
This is an old project of mine, which I worked on many years ago. (You can see that from the fact that I used C++ rather than Rust😆.)
# Usage
- First of all, try to understand the codebase! It's a bit convoluted: the CPU simulator (VM-type thing) is almost 900 lines of monolithic code, with basic "building blocks" kludged together in a big switch statement.
- As for the assembler, I use hlorenzi's [customasm](https://github.com/hlorenzi/customasm).
- The weird instruction format and addressing modes stem from my original plan to actually build the CPU with TTL. That's probably not going to happen, but I have designed the CPU to be relatively feasible a bit like Ben Eater's [Breadbord CPU](https://eater.net/8bit).
# Future plans?
- Rewrite the VM in Rust (RiiR)?
# Contributing
- If you want to include yourself in my madness, go ahead!
