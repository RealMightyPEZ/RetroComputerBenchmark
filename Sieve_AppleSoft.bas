1 GOSUB 210
30 FOR M = 1 TO 1
40 C = 0
50 GOSUB 350
71 PRINT "INIT DONE"
80 FOR I = Z TO X
90 IF F(I) = Z GOTO 170
100 P = I + I + T
110 K = I + P
120 IF K > X THEN 160
130 F(K) = Z
140 K = K + P
150 GOTO 120
160 C = C + O
170 NEXT I
180 NEXT M
190 PRINT C;" PRIMES"
200 END
210 DIM F(8191)
211 X = 8190
212 Z = 0
213 O = 1
214 T = 3
220 PRINT "APPLE //e APPLESOFT BASIC"
250 RETURN
350 FOR I = Z TO X
360 F(I) = O 
370 NEXT I
380 RETURN

Notes:
 Variables
    C = Count of primes
    I = Current pointer into the array
    K = Current inner step pointer into the array
    M = Iteration count, 1 for slower machines, multiply result if M not 10
    O = 1 ; Capital Oh is the number 1, used so the numer 1 doesnt have to be parsed in loops
    P = Current Prime number found
    Q = No while/wend for line 120 in MS Atari basic, replace with for loop; Q is current iterator
    T = 3 ; Used so the numer 3 doesnt have to be parsed when used as a constant
    X = Assign constant 8190 to a variable; doesnt help in Atari or MS Atari basic, helps trmendously in Applesoft basic
    Z = Zero ; used so as not to have to parse the character 0 into a value.
