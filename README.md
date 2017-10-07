# FunnyString
Suppose you have a String,#S, of length #N  that is indexed from #0 to #N - 1 . You also have some String,#R , that is the #reverse of String #S.  #S is 'funny' if the condition |S[i] - S[i-1]| = |R[i] - R[i-1]|  is true for every character from #i to #1 to #N - 1.

Note: For some String S, S[i] denotes the ASCII value of the #ith  0-indexed character in #S. The absolute value of an integer, #x , is written as #|x|.

EG: Input - Output
acxz - Funny
bcxz - Not funny
