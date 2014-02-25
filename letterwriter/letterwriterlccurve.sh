# Let's start by creating two functions to generate two batches of characters.
function gencharA {
	# Let's create some variables. A metafont glyph starts with a header...
	
	alfa=( `echo {a..z}` );

	header="beginmychar (ASCII\"${alfa[(($1-1))]}\", lwboxw*u#, lwboxh*u#, 0);";
	# ... and ends with a footer.
	footer="endchar;\n";

	# The function begins by printing the header...
	echo "$header";

	# ...and goes on describing the dots to plot. This is a long pipe saved as a variable. What it does:
	# - Read-in the bitmap character-data from a data file, which is expressed in decimal numbers.
	# - Leave out the part before DATA
	# - Iterate over the first half of the data (for some reason, Robert Speel fits two characters per DATA line)

	chardec=`cat data-letterwriter.txt | cut -d ' '  -f3 | awk 'BEGIN{FS="," }{ for (i = 1; i <= NF/2; i++) printf $i FS }{ printf "\n" }' | head -$2 | tail -1 | sed s/\,$//g`;
	printf "draw ";
	echo $chardec | tr , "\n" | while read n;
	do b=`echo "obase=2; $n" | bc`;
	printf "%08d\n" $b | sed -e 's/0/ /g' -e 's/1/#/g';
	done | awk 'BEGIN{ FS="" } { for (n=1; n<=8; n++) printf " "$n n"*u,"NR"*u" }{ printf "\n" }' | tr ' ' '\n' | grep '#' | cut -d# -f2 | while read coo;
	do echo $coo | awk 'BEGIN{ FS="," }{ printf "("$1","$2")"}{ printf ".." }'; done;
	printf "\n$footer\n";
	};

function gencharB {
	# Same as above

	alfa=( `echo {a..z}` );
	alfaln=`echo ${#alfa[@]}`;
	
	header="beginmychar (ASCII\"${alfa[(( (($alfaln/2))+$1-1 ))]}\", lwboxw*u#, lwboxh*u#, 0);";
	footer="endchar;\n";

	echo "$header";
	chardec=`cat data-letterwriter.txt | cut -d ' '  -f3 | awk 'BEGIN{FS="," }{ for (i = NF/2; i <= NF; i++) printf $i FS }{ printf "\n" }' | head -$2 | tail -1 | sed s/\,$//g`;
	printf "draw ";
	echo $chardec | tr , "\n" | while read n;
	do b=`echo "obase=2; $n" | bc`;
	printf "%08d\n" $b | sed -e 's/0/ /g' -e 's/1/#/g';
	done | awk 'BEGIN{ FS="" } { for (n=1; n<=8; n++) printf " "$n n"*u,"NR"*u" }{ printf "\n" }' | tr ' ' '\n' | grep '#' | cut -d# -f2 | while read coo;
	do echo $coo | awk 'BEGIN{ FS="," }{ printf "("$1","$2")"}{ printf ".." }'; done;
	printf "\n$footer\n";
	};

dataln=`cat data-letterwriter.txt | wc -l`;

for (( a=1; a<$((dataln)); a++ ));
do gencharA $a $a | sed 's/\.\.$//g';
done;

for (( b=1; b<$((dataln)); b++ ));
do gencharB $b $b | sed 's/\.\.$//g';
done;

echo 'end;'
