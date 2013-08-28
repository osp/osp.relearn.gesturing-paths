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
(17,71);
draw (17,71) .. (18,81) .. (12,21) .. (13,23) .. (14,25) .. (15,15) - (18,22) .. (55,2) .. (56,3) .. (74,56) -- (5,5) -- (7,7) .. (9,5)  .. (13,1) .. (12,21) .. (5,4) .. (3,2) .. (1,0) -- (190,897) -- (185,897) -- (185,890) -- (180,888) -- (180,880) -- (1,1) .. (2,2) .. (3,3) .. (4,4) -- (5,5) -- (6,6) -- (7,7) -- (8,8) -- (9,9) -- (10,10) -- (1,10) .. (2,20) .. (3,30) .. (4,40) -- (5,50) -- (6,60) -- (7,70) -- (8,80) -- (9,90) -- (10,100) withcolor (.4,.7,.1);
draw (24,66) .- (1,1) ...
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
