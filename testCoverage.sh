#!/bin/sh

project_dir="$(pwd)"

# Make unit test executable with code coverage compile flags -> Creates GCNO files
# make clean
# make test

# Execute unit tests -> Creates GCDA files
./bin/test/verica -p

# Check if lcov is installed
if which lcov 2>/dev/null; then
    # Obtain code coverage information file using lcov
    lcov -c -d . -o ./coverage/coverage.info

    # Remove unwanted directories from coverage information
    lcov --remove ./coverage/coverage.info -o ./coverage/coverage.info "${project_dir}/unittests/*" '/usr/include/c++/*' '/usr/include/boost/*' '/usr/include/x86_64-linux-gnu/*'

    # Check if genhtml is installed
    if which genhtml 2>/dev/null; then
        # Generate HTML file
        genhtml ./coverage/coverage.info -o ./coverage
    else
        echo "[!] Could not find genhtml. Run the following command to install genhtml:\nsudo apt install lcov"
    fi
else
    echo "[!] Could not find lcov. Run the following command to install lcov:\nsudo apt install lcov"
fi

# Clear GCDA files (comment the following line to keep the files)
for f in $(find ./build -name '*.gcda'); do rm $f; done

# Clear GCNO files (comment the following line to keep the files)
# for f in $(find ./build -name '*.gcno'); do rm $f; done