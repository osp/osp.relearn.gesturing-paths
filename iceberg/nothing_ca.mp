prologues := 3;     % sortie EPS

beginfig(6);
pickup penrazor xscaled 1pt yscaled 2pt rotated -45 ;
draw (2,2)--(4,4)--(6,6)--(8,8)--(10,10) withcolor green;
draw (2,4)--(4,-2)--(6,-4)--(8,-6)--(10,8);
draw (2,6)--(4,6)--(6,-2)--(8,-4)--(10,-6) withcolor green;
draw (2,8)--(4,8)--(6,8)--(8,-2)--(10,-4);
draw (2,10)--(4,10)--(6,10)--(8,10)--(10,-2);
endfig;
end


% ___1 diagonale sur elle-même baguette magique
%beginfig(1);
%pickup pencircle xscaled 1 yscaled 2 rotated -45 ;
%draw (3,3)--(6,6)--(9,9)--(12,12)--(15,15)--cycle;
%endfig;
%end

% ___2 diagonale OK
%beginfig(2);
%pickup pencircle xscaled 1 yscaled 2 rotated -45 ;
%draw (3,3)--(6,6)--(9,9)--(12,12)--(15,15);
%endfig;
%end

% ___3 diagonale OK plus fine
%beginfig(3);
%pickup pencircle xscaled 1 yscaled 2 rotated -45 ;
%draw (20,20)--(40,40)--(60,60)--(80,80)--(100,100);
%endfig;
%end

% ___4 motif croisé en diagonale
%beginfig(4);
%pickup penrazor xscaled 1pt yscaled 3pt rotated -45 ;
%draw (20,20)--(40,40)--(60,60)--(80,80)--(100,100)..cycle;
%draw (20,40)--(40,-20)--(60,-40)--(80,-60)--(100,-80)..cycle;
%draw (20,60)--(40,60)--(60,-20)--(80,-40)--(100,-60)..cycle;
%draw (20,80)--(40,80)--(60,80)--(80,-20)--(100,-40)..cycle;
%draw (20,100)--(40,100)--(60,100)--(80,100)--(100,-20)..cycle;
%endfig;
%end


% ___5 motif identique avec courbe, spirale
%beginfig(5);
%pickup penrazor xscaled 1pt yscaled 5pt rotated -45 ;
%draw (20,20)..(40,40)..(60,60)..(80,80)..(100,100)..cycle;
%draw (20,40)..(40,-20)..(60,-40)..(80,-60)..(100,-80)..cycle;
%draw (20,60)..(40,60)..(60,-20)..(80,-40)..(100,-60)..cycle;
%draw (20,80)..(40,80)..(60,80)..(80,-20)..(100,-40)..cycle;
%draw (20,100)..(40,100)..(60,100)..(80,100)..(100,-20)..cycle;
%endfig;
%end
