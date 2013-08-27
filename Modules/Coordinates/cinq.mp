
u:=25;                    % 25 = 25bp = 25 PostScript points = 30/72 in
wi:=10;                   % width  in units u   
he:=10;                    % height in units u
height:=he*u;              % height
width:=wi*u;		%width
graisse := 25;

beginfig(5)
pickup pencircle scaled 1;

  for i=0 upto he:
    draw (0, i*u)--(width, i*u) withcolor .7white;
  endfor
  for j=0 upto wi:
    draw (j*u, 0)--(j*u, height) withcolor .7white;
  endfor

pickup pencircle scaled graisse;

draw (7u,9u)--(3u,9u) -- (3u,5u) .. (7u,4u) ..  (3u,3u) ;

%draw (5u,5u) .. (7u,7u) .. (7u,8u) {up} .. (3u,8u) {down} .. (7u,2u);


endfig
end
