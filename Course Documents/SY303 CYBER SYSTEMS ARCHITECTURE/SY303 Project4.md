## Project 4

Create and execute the two Assembly programs as specified in Chapter 4
of your book:

**Mult, Fill**

-   Mult – Perform multiplication between numbers in registers with only
    an Adder

-   Fill – Draw every pixel on a memory mapped screen peripheral

    -   **cp File.asm File.asm.txt**

    -   **cp File.hack File.hack.txt**

Files to submit (for each program):

1.  The appropriately named File.asm.txt file as created above.

2.  The appropriately named File.hack.txt file as created above. 

EXTRA CREDIT

Download the attached **Decrypt.tst** file.  You will need to write a
Hack Assembly program named Decrypt.asm.

-   The program should XOR decrypt a null-terminated buffer
    of Ciphertext characters.

-   R0 will store the KEY.

-   R1 will store a pointer to the beginning of the encrypted character
    buffer.

-   You must go to the buffer and XOR each Register with the KEY until
    you get to a Register that is all zeros (null-terminated).

-   Registers should be decrypted* IN-PLACE* (eg. if Ciphertext was in
    Register 88, the Plaintext result should overwrite it in Register
    88).

-   The provided Decrypt.tst script will take the decrypted contents of
    the buffer (provided you decrypted correctly) and send
    these Plaintext ASCII values (in Hex) to the .out file.

**SUBMIT**: Your working Decrypt.asm.txt and Decrypt.hack.txt and write
the decoded message in the comments section on Blackboard that gets
submitted with the assignment.
