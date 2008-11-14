echo "File name $1"
echo "run length $2"

if [ $# -lt 3 ]
then 
  echo "Usage: checkResults.sh filename runLen stamp0 ... stampN"
  exit 1;
fi

FILENAME=$1
LEN=$2

shift 2

echo Checking results...
java ch.qos.logback.classic.multiJVM.Checker $LEN $FILENAME $*