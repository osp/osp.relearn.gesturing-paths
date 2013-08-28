prologues := 3;     % sortie EPS

beginfig(1);

pickup pencircle scaled 1;

% PARTICIPANT A
draw (10,22) .. (34,78) ... (10,10) -- (11,11) .. (4,7) ... (1,1) dashed evenly withcolor (1,1,0);
% HERE STARTS THE CONNECTOR WHICH SHOULD CONNECT TO YOUR LAST COORDINATE:
draw (10,10) ..
% //////////////////////////////////////
% PARTICIPANT B
% THIS IS THE OTHER END OF THE CONNECTOR, WHICH SHOULD CONNECT TO YOUR FIRST COORDINATE:
(123,800);
draw (123,800) .. (5,2) .. (600,12) dashed evenly withcolor (1,0,0);
draw (600,12) .. (5,2) ...
% //////////////////////////////////////
% PARTICIPANT C
(12,25) ... (4,67) ..(5, 68) -- (13,42);
draw (13,42) .. (64,178) ... (450,50) dashed evenly withcolor (1,3,7);
draw (450,50) --
% //////////////////////////////////////
% PARTICIPANT D
(12,25) ... (13,42);
draw (13,42) .. (64,178) ... (100,10) dashed evenly withcolor (1,0,5);
draw (100,10) --
% //////////////////////////////////////
% PARTICIPANT E
(12,25) ... (13,35) ... (12,25) ... (12,25) ... (13,35) ... (12,25);
draw (12,25) .. (64,178) ... (100,10) withcolor (5,0,5);
endfig;
end
