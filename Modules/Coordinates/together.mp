prologues := 3;     % sortie EPS

beginfig(1);

pickup pencircle scaled 5;

% PARTICIPANT A
draw (50,50) -- (100,300) -- (150,50) -- (150,0) -- (25,0) -- (100,400)--(175,50)--(15,50)--(100,600)--(200,70)--(0,0) dashed evenly withcolor (1,.5,0);
% HERE STARTS THE CONNECTOR WHICH SHOULD CONNECT TO YOUR LAST COORDINATE:
draw (0,0) ..
% //////////////////////////////////////
% PARTICIPANT B
% THIS IS THE OTHER END OF THE CONNECTOR, WHICH SHOULD CONNECT TO YOUR FIRST COORDINATE:
(123,800);
draw (123,800) .. (5,2) .. (600,12) dashed evenly withcolor (1,0,0);
draw (600,12) .. (5,2) ...
% //////////////////////////////////////
% PARTICIPANT C
(12,25) ... (13,42);
draw (13,42) .. (64,178) ... (100,10) dashed evenly withcolor (1,0,5);
draw (100,10) --
% //////////////////////////////////////
% PARTICIPANT D
(12,25) ... (13,42);
draw (13,42) .. (64,178) ... (100,10) dashed evenly withcolor (1,0,5);
draw (100,10) --
% //////////////////////////////////////
% PARTICIPANT E
(12,25) ... (13,42);
draw (13,42) .. (64,178) ... (100,10) dashed evenly withcolor (1,0,5);
endfig;
end
