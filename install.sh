#!/bin/sh
sudo chef-solo -c /Users/sivabalivada/python-self/solo.rb -j /Users/sivabalivada/python-self/python.json --log-level debug > logFile
