# Copyright 2018 @ http://ACloudFan.com 
# Part of a online course. Please check it out at http://www.acloudfan.com

# Cleans up the peer
killall peer 2> /dev/null
rm ../*.log  2> /dev/null
rm ../*.block 2> /dev/null
rm -rf $HOME/peers/ 2> /dev/null


echo "Done."