# ft_printf
Aims to replicate the functionality of printf by handling formatted output, allowing the developer to print strings, numbers, and other data types in a specified format.

## Overview

`ft_printf` is a custom implementation of the standard C library function `printf`. It provides formatted output to the standard output, allowing you to print strings, numbers, and other data types with specified formats. 
This project is often a part of coding education programs, like those at 42 School, to help students understand the intricacies of variadic functions and formatted output in C.

## Features

- **Format Specifiers:**
  - `%d` or `%i` for integers
  - `%u` for unsigned integers
  - `%x` and `%X` for hexadecimal representation (lowercase and uppercase)
  - `%o` for octal representation
  - `%c` for characters
  - `%s` for strings
  - `%p` for pointers
  - `%%` to print a percent sign

- **Flags and Width Specifiers:**
  - `-` for left-aligned output
  - `0` for zero-padding
  - `.` followed by a number to specify precision
  - A number to specify minimum field width

## Bonus Features

In addition to the basic functionality, the `ft_printf` project includes several bonus features:

- **Advanced Flags:**
  - `+` to force a plus sign on positive numbers
  - ` ` (space) to insert a space before positive numbers
  - `#` for alternate form (prefix `0` for octal, `0x`/`0X` for hex)


## Getting Started

### Prerequisites

- GCC or any compatible C compiler
- `make` utility

### Installation

1. **Clone the repository:**
    ```sh
    git clone https://github.com/Miami05/ft_printf.git
    ```

2. **Navigate to the project directory:**
    ```sh
    cd ft_printf
    ```

3. **Compile the `ft_printf` library:**
    ```sh
    make
    ```

## Usage

Include the `ft_printf.h` header in your C code and link against the compiled library.

### Example

Copy and paste the following example into your C file:

```c
#include "ft_printf.h"

int main() {
    int number = 42;
    char *string = "Hello, world!";
    
    ft_printf("Number: %d\n", number);
    ft_printf("String: %s\n", string);
    
    return 0;
}

Compile your program with the ft_printf library:

gcc -Wall -Wextra -Werror -I./libft -o example example.c libftprintf.a

Run the program:

./example