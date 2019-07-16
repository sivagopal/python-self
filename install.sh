#!/bin/sh
sudo chef-solo -c ${HOME}/chef-repo/solo.rb -j ${HOME}/chef-repo/portal-setup.json --log-level debug 
