// Multiplication
// Copyright (C) 2013 Eric Herman
// License: GNU General Public License v3 or any later version

// RAM[2] = RAM[0] * RAM[1]
// after, value in RAM[1] will be set to zero

@2
M=0      // zero results register RAM[2]
@0
D=M
@end
D;JEQ    // if RAM[0] is zero, we're done
(begin)
  @1     // remaining iterations register RAM[1]
  D=M
  @end
  D;JEQ  // if remaining iterations is zero, we're done
  @1
  M=M-1  // decrement remaining iterations
  @0     // get base value
  D=M
  @2
  M=M+D  // add base value to result
  @begin
  0;JMP  // repeat
(end)
@end
0;JMP
