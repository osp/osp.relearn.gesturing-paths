prologues := 3;     % sortie EPS
color red;
red = (1,0,0);
beginfig(1)

%fill (-3,-3) -- (-3,13) -- (13,13) -- (13,-3) -- cycle withcolor(red);

increase = 7/4.5;

pickup pencircle scaled .1

draw (0,14) -- (0, -14);

pickup pencircle scaled 5

draw 
(10.8, -4 * increase) ---
(6, -7 * increase) ..
(-2.25, -9 * increase) ..
(-5, -5 * increase * .6) ---
(4, 4 * increase) ..
(0, 14) .. 
(-4, 4 * increase) --- (7.2, -7.2 * increase) ..
(10.8, -8.8 * increase)
;

pickup pencircle scaled .1

draw 
(10.8, -4 * increase) ---
(6, -7 * increase) ..
(-2.25, -9 * increase) ..
(-5, -5 * increase * .6) ---
(4, 4 * increase) ..
(0, 14) .. 
(-4, 4 * increase) --- (7.2, -7.2 * increase) ..
(10.8, -8.8 * increase)
withcolor white
;

endfig
end
