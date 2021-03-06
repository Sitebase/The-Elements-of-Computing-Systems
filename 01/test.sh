RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m' # No Color

# for file in $(ls 01/*.tst); do
for chip in And Not Or Xor Mux DMux Or8Way And16 Not16 Or16; do
    RESULT=$(./.tools/tools/HardwareSimulator.sh "01/$chip.tst")
    if [ $? -eq 0 ]
    then
        echo "${GREEN}PASS${NC} $chip"
    else
        echo "${RED}FAIL${NC} $chip"

        # Output diff
        echo "\nexpected:"
        cat "01/$chip.cmp"
        echo "\nresult:"
        cat "01/$chip.out"

        exit 1
    fi
done
