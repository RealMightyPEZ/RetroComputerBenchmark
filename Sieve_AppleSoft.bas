10 GOSUB 210
30 FOR M = 1 TO 1
50 GOSUB 350
80 FOR I = 0 TO X
90 IF F%(I) = 0 THEN 170
100 P = I + I + 3
110 K = I + P
115 IF K > X THEN 160
120 FOR Q=K TO X STEP P
130 F%(Q)=0
150 NEXT Q
160 C = C + 1
170 NEXT I
180 NEXT M
190 PRINT C;" PRIMES"
200 END
210 DIM F%(8191)
211 X = 8190
220 PRINT "APPLE //e APPLESOFT BASIC"
250 RETURN
350 FOR I = Z TO X
360 F%(I) = 1
370 NEXT I
371 PRINT "INIT DONE"
375 C = 0
380 RETURN

Notes:
 Variables
    C = Count of primes
    I = Current pointer into the array
    K = Current inner step pointer into the array
    M = Iteration count, 1 for slower machines, multiply result if M not 10
    P = Current Prime number found
    Q = No while/wend for line 120 in MS Atari basic, replace with for loop; Q is current iterator
    X = Assign constant 8190 to a variable; doesnt help in Atari or MS Atari basic, helps trmendously in Applesoft basic
    