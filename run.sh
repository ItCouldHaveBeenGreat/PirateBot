#!/bin/bash
source ~/Rutsubo/bin/activate
python ~/Rutsubo/rutsubo.py &> rutsubo.log &
RUTSUBO_PY=$!
java -jar ~/Eyepatch/target/eyepatch-0.0.1-jar-with-dependencies.jar 1000
echo $RUTSUBO_PY
kill $RUTSUBO_PY
