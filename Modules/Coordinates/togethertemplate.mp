prologues := 3;     % sortie EPS

beginfig(1);

% PARTICIPANT A
preliminary stuff
draw (x,y) .. (x,y) --- (x,y)
;
additional stuff;
HERE STARTS THE CONNECTING SHARED OBJECT:
draw (x,y) ...
% //////////////////////////////////////
% PARTICIPANT B
(x,y)
;
preliminary stuff
draw (x,y) .. (x,y) --- (x,y)
additional stuff
;
endfig;
end
