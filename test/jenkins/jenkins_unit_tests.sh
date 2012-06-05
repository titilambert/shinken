#!/bin/sh

# NOTE: running from the root of the project.

# What tests do you want to launch ?
# longtests
# shorttests
# minitests
tests=$1

sleep 1
export PIP_DOWNLOAD_CACHE=$HOME/.pip/download_cache
export COVERAGE_PROCESS_START=$PWD/.coveragerc

./test/jenkins/prepare_environment.sh

. env/bin/activate

./test/jenkins/runtests ./test/jenkins/$tests.txt COVERAGE PYLINT PEP8

EXIT_CODE=$?

# Compile coverage info.
#coverage combine
#coverage xml

exit $EXIT_CODE

