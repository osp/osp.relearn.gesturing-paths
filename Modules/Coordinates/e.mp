beginfig(1)
draw (0,0) .. (8,5) .. (15,15) .. (7,7) .. (10,1) .. (35,3);
draw (0,0) .. (15,15) .. (7,7) .. (10,1) withcolor green;
draw (0,0) .. (15,30) .. (7,7) .. (10,1) withcolor blue;
draw (0,0) .. (8,5) .. (15,15) .. (7,7) .. (10,1) dashed evenly withcolor (1,1,0);
draw (0,0) -- (15,15) -- (7,7) -- (10,1) withcolor red; 
endfig;
end
