u:=25;                    % 25 = 25bp = 25 PostScript points = 30/72 in
wi:=10;                   % width  in units u   
he:=10;                    % height in units u
height:=he*u;              % height
width:=wi*u;		%width
graisse := 25;
color rouge;
rouge := (1,0,0);

beginfig(5)
pickup pencircle scaled 1;

% the grid

  for i=0 upto he:
    draw (0, i*u)--(width, i*u) withcolor .7white;
  endfor
  for j=0 upto wi:
    draw (j*u, 0)--(j*u, height) withcolor .7white;
  endfor

% end grid

pickup pensquare xscaled 1 yscaled 20 rotated -45 ;

draw (7u,9u)--(3u,9u) -- (3u,5u) .. (7u,4u) ..  (3u,3u) ; % the five

draw (7u,8u)..(3u,7u)..(7u,4u)..(3u,3u) withcolor rouge;


endfig
end
