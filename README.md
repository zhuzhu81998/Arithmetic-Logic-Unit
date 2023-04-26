# Arithmetic-Logic-Unit
 An 32-Bit ALU designed for the coursework "Digital Design and Computer Architecture" given by Prof. Onur Mutlu at ETH Zurich (Spring 2023)  
 https://www.vorlesungen.ethz.ch/Vorlesungsverzeichnis/lerneinheit.view?lang=en&lerneinheitId=168654&semkez=2023S&  
 
 It takes in 2 32-Bit inputs A and B and a 4-Bit AluOp. The ALU then performs the following operations:
 | AluOp | Result |
| :---------------: | :---------------: |
| 0000  | A + B   |
| 0010  | A - B   |
| 0100  | A and B |
| 0101  | A or B  |
| 0110  | A xor B |
| 0111  | A nor B |
| 1010  | A slt B |

Furthermore, it sets an output "flag" to 1, if and only if all 32 bits of the result are "0".  
For "A + B" there is also a carry.
