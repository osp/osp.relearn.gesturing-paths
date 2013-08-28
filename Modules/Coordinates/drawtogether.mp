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

% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT B

% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT C
(64,3)..(65,4)..(66,5)..(67,6)---(68,7)
% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT D

% YOUR OUTGOING CONNECTOR GOES HERE

% //////////////////////////////////////
% PARTICIPANT E (YOU ARE THE LAST ONE)
(0,0) .. (8,5) .. (15,15) .. (7,7) .. (10,1) dashed evenly withcolor (1,1,0);
%THIS IS THE END OF THE DRAWING
;
endfig;
end
