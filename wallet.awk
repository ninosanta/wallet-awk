#! /usr/bin/awk -f

BEGIN {
    tot = 0;
    start = 1;
    mTot = 0;
    mOut = 1;  # montly and total output
    mCurr = "";
    error = 0;

    if (ARGC == 2) {
	mOut = 0;  # only tot output
    } else if (ARGC < 2 || (ARGC == 3 && ARGV[2] != "--monthly")) {
	print "Usage: ./inout.awk filename [--monthly]"
	ARGC = 1;
	ARGV[1] = ARGV[2] = "";
	error = 1;
	exit 1;
    } else {
	# --monthly
	ARGV[2] = "";
	ARGC--;
    }
}


/^[+-].*[0-9]/ {
    tot += $1;
    mTot += $1;
}


mOut == 1 && /^[^+-]/  {
    if (start == 0) {
	if (mTot > 0)
	    mTot = "+"mTot;
	print "   Total monthly money aside: "mTot" euros"
	mTot = 0;
    } else if (start == 1) {
	start = 0;
    }
    mCurr = $0;
    print $mCurr":"

}


END {
    if (!error) {
	if (mTot > 0)
	    mTot = "+"mTot;
	if (mOut == 1)
	    print "   Total monthly money aside: "mTot" euros"
	if (tot > 0)
	    tot = "+"tot
	printf("\n\n\nTOTAL status: ")
	print tot" euros"
    }
}
