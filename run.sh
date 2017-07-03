#!/bin/bash
source ~/Rutsubo/bin/activate
python ~/Rutsubo/rutsubo.py > rutsubo.log &
java -jar ~/Eyepatch/target/eyepatch-0.0.1-jar-with-dependencies.jar > eyepatch.log &
