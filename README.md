# Compiler Design

This repository contains programs developed as part of the **Compiler Design Laboratory** course. The lab focuses on the lexical analysis phase of a compiler using **C** and **Flex (Lex)**.

## 🔧 Technologies Used

- **C Programming Language**
- **Lex / Flex** (Fast lexical analyzer generator)
- **GCC** (GNU Compiler Collection)
- **Linux/Mac Terminal** or compatible shell


## 🚀 Getting Started

### ✅ Prerequisites

- GCC installed (`gcc --version`)
- Flex installed (`flex --version`)

### 🔨 Compiling C Programs

#### bash
cd c_programs
gcc filename.c -o output
./output

#### ⚙️ Running Flex Programs
cd flex_programs
flex filename.l      # generates lex.yy.c
gcc lex.yy.c -o output -lfl
./output

#### Lab Exercises
1. Tokenizing Identifiers, Keywords, Numbers

2. Lex Program for Arithmetic Expression Evaluation

3. Lex Program for Removing Comments

4. Lex Program for Counting Lines, Words, Characters

5. C Program to Simulate DFA/NFA

6. C Program for First and Follow of a Grammar

7. Lexical Analyzer for C-style Code


###### ✍️ Author
**Shubham Kumar**
B.Tech in CSE – Maulana Abul Kalam Azad University of Technology, West Bengal