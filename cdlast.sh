#!
function cdlast() {
d=`ls -rc --format=single-column -d */|tail -n 1`
cd $d
}
