#!/bin/sh
sudo chef-solo -c /home/csocprt01/python-self/solo.rb -j /home/csocprt01/python-self/python.json --log-level debug > logFile
