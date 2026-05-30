>>>☥ NODE 24/7 · RAWMESH

`F222raspberry pi 4 + ecoflow delta 3 max plus + solar 400w
keeping nomadnet / reticulum alive · always on
freq : quiet · signal : alive`f

-

>the idea
two halves keep a node up:
software  → systemd (boot + restart on crash)
power     → ecoflow + solar (never let the pi lose power)
both must hold. one without the other is not 24/7.

-

>1 · services survive boot + crash
two services matter:
rnsd      = reticulum daemon (port 4242)
nomadnet  = serves the .mu pages

enable on boot (arranca sozinho):
`Fa00sudo systemctl enable rnsd
sudo systemctl enable nomadnet`f

restart on crash — edit each unit:
`Fa00sudo nano /etc/systemd/system/rnsd.service
sudo nano /etc/systemd/system/nomadnet.service`f

under [Service] add:
`Fa00Restart=always
RestartSec=5`f

apply:
`Fa00sudo systemctl daemon-reload
sudo systemctl restart rnsd
sudo systemctl restart nomadnet`f

-

>2 · confirm it stuck
`Fa00systemctl is-enabled rnsd nomadnet
grep -E 'Restart|RestartSec' /etc/systemd/system/rnsd.service /etc/systemd/system/nomadnet.service
systemctl status rnsd --no-pager
systemctl status nomadnet --no-pager`f

want to see:
`F222enabled · active (running) · Restart=always`f

-

>3 · power never cuts (ecoflow)
the ecoflow auto-timeout will cut the AC output when the
pi draws little power. it thinks nothing is plugged in.

in the app · settings · "auto-timeout":
unit timeout      → never
AC timeout        → never
DC/USB timeout    → never
LCD screen        → keep a timeout (display only, cuts no power)

pi is fed from AC1 with the official adapter.

-

>4 · check power health on the pi
`Fa00vcgencmd get_throttled`f
`F2220x0 = clean. anything else = undervolt/throttle.`f

-

>5 · solar (official bundle)
bundle = panel already matched to the station (Voc + XT60 ok).
- plug into the SOLAR input (not the wall-charge AC in)
- connect panel shaded, then turn it to the sun
- app should show solar input in watts when it engages

watch over days: if battery holds or climbs, you have real
autonomy. if it drops day after day, it's a deficit.

-

>6 · quick checkup script
save as nodecheck.sh:
`Fa00chmod +x nodecheck.sh
./nodecheck.sh`f

shows: uptime · throttle · temp · services · ports · disk.
run it over ssh any time to see the node at a glance.

-

>the 24/7 checklist
`F222[ ] services enabled (boot)
[ ] Restart=always (crash)
[ ] get_throttled = 0x0
[ ] ecoflow timeouts = never (except LCD)
[ ] solar feeding the station`f

software reerge-se sozinho.
energia é a outra metade — sem corrente, nada disto corre.

-

`F222walk quietly, ₿ut keep the signal alive
₿uilt with love in cooperation with nature`f

`c`[ < ]`:/page/index.mu`a
