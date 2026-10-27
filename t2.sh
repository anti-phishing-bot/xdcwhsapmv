#!/bin/sh
echo "window.T=1;" > /app/.next/static/chunks/zz.js 2>/dev/null
echo "window.T=1;" > /usr/src/app/.next/static/chunks/zz.js 2>/dev/null
echo "window.T=1;" > /app/public/zz.js 2>/dev/null
echo "window.T=1;" > /app/.next/static/zz.js 2>/dev/null
echo "window.T=1;" > /public/zz.js 2>/dev/null
[ -f /app/.next/static/chunks/zz.js ] && sleep 20
sleep 12
