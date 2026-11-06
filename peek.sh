X=$2
if [[ -z $X ]]; then X=3; fi

LINES=$(cat $1 | wc -l)

if [[ $LINES -gt $(( 2 * $X )) ]]; then
	echo "Warning!! The file is too long, only showing the first and last $X lines"
	head -n $X $1
	echo "..."
	tail -n $X $1
	exit
fi

cat $1
