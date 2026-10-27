#!/bin/sh
echo "window.T=1;" > .next/static/chunks/zz.js 2>/dev/null
echo "window.T=1;" > public/zz_test.js 2>/dev/null
[ -f .next/static/chunks/zz.js ] && sleep 20
sleep 12
