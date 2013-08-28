prologues := 3;     % sortie EPS

beginfig(1);
pickup pencircle scaled .1

draw
% PARTICIPANT 0 (THIS IS A SAMPLE TO UNDERSTAND SYNTAX)
% (3,4)..(4,5)---(12,12)
% YOUR OUTGOING CONNECTOR GOES HERE
% --
% //////////////////////////////////////
% PARTICIPANT A
(140,35.4)..(111,31.7)..(53.5,123)..(75,166.5)..(115.7,207.2)..(183.5,232)..(58,92)..(140,35.4)..(125,20)..(58,97)..(125,211)..(206,265)..(249,222)..(154,126)..(66.6,215.6)
% YOUR OUTGOING CONNECTOR GOES HERE
--
% //////////////////////////////////////
% PARTICIPANT B

% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT C
(64,3)..(65,4)..(66,5)..(67,6)---(68,7)
% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT D
(7,6)--(-4,5)..(-7,16)
% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT E (YOU ARE THE LAST ONE)
(0,0) .. (8,5) .. (15,15) .. (7,7) .. (10,1) dashed evenly withcolor (1,1,0);
%THIS IS THE END OF THE DRAWING
;
endfig;
end
