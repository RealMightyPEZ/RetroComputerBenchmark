10 GOSUB 201
30 FOR M = 1 TO 1
50 GOSUB 250
80 FOR I = 0 TO X
90 IF PEEK(Y+I)=0 THEN 170
100 P=I+I+3
110 K=I+P
120 FOR Q=K TO X STEP P
130 POKE(Y+K),0
140 K=K+P
150 NEXT Q
160 C=C+1
170 NEXT I
180 NEXT M
190 PRINT C," PRIMES"
199 END
200 DEFINT A-Z
201 DIM C
202 DIM I
203 DIM K
204 DIM M
205 DIM P
206 DIM Q
207 DIM X
208 DIM Y
210 X=8190
211 DIM F(X+1)
220 Y=VARPTR(F(0))
230 PRINT "ATARI MS BASIC PRIMES"
240 RETURN
250 C = 0
260 FOR I=0 TO X
270 POKE(Y+I),1
280 NEXT I
290 PRINT "INIT DONE"
300 RETURN

Notes:
 Variables
    C = Count of primes
    I = Current pointer into the array
    K = Current inner step pointer into the array
    M = Iteration count, 1 for slower machines, multiply result if M not 10
    P = Current Prime number found
    Q = No while/wend for line 120 in MS Atari basic, replace with for loop; Q is current iterator
    X = Assign constant 8190 to a variable; doesnt help in Atari or MS Atari basic, helps trmendously in Applesoft basic
    Y = Memory offset of array F because peek/poke is much faster that assigning/testing variables in an array
