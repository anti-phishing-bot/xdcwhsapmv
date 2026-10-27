#!/bin/sh
printf '\211PNG\r\n\032\n\000\000\000\rIHDR\000\000\000\001\000\000\000\001\010\006\000\000\000\037\025\303\211\000\000\000\013tEXtComment\000TESTLO\000\000\000\000IEND\256B`\202' > /local_test.png
[ -f /local_test.png ] && sleep 20
sleep 12
