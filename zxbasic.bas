    1 BORDER 1
    5 LET row=0
    6 LET score=0
   10 LET p=16
   20 LET col=15
   25 LET row=0
   30 PRINT AT row,col;"#"
   40 LET row=row+1
  100 PRINT AT 20,p;"^"
  105 LET psave=p
  110 IF INKEY$="p" AND p<31 THEN LET p=p+1
  120 IF INKEY$="q" AND p>0 THEN LET p=p-1
  130 IF psave<>p THEN PRINT AT 20,psave;" "
  140 PRINT AT row-1,col;" "
  145 IF row>20 AND p=col THEN LET score=score+1: PRINT AT 21,0;"Score ";score;
  150 IF row>20 THEN LET row=0: LET col=INT (16*RND)+7
  200 GO TO 30
