#!/usr/bin/python
import os
import datetime

# requires python, valgrind, graphviz, gprof2dot

# need to install gprof2dot? `pip install gprof2dot` should work

fname = str(datetime.datetime.now().strftime("%I-%M-%S-%d-%m-%Y"))

logname = fname + ".txt"
valgrind = "valgrind --tool=callgrind --callgrind-out-file={} ./build/apps/ssehc".format(logname)

os.system(valgrind)

imgname = fname + ".svg"

gprof2dot = "python3 -m gprof2dot -f callgrind {} | dot -Tsvg -o {}".format(logname, imgname)

os.system(gprof2dot)
