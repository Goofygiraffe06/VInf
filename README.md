# VInf - Vim Information

VInf is a Vim plugin designed to automatically insert detailed system and compiler information into Vim files. It enhances your development workflow by providing essential environment details directly within your editor.
Installation

You can run the `install.sh` in the project repository to install the plugin.

## Usage

Inserting Information
Open a file in Vim and use the command `:VInf` to insert system and compiler information at the top of the file.

## Example Output

After running `:VInf` in Vim for a file named main.asm, the output would look like this:

```
; Compiled on Linux (x86_64)
; Author: giraffe
; Kernel: 6.9.6-arch1-1
; Date: 2024-06-30 11:04:14
; File: main.asm
; Compiler: nasm (NASM version 2.16.03 compiled on May  4 2024)
```

## Contributing

Contributions are welcome! If you have any suggestions, improvements, or feature requests, feel free to open an issue or submit a pull request.
