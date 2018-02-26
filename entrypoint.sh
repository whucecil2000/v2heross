cd /v2raybin
echo -e -n '{"log":{"loglevel":"warning"},"inbound":{"protocol":"shadowsocks","port":' > config.json
echo -e -n "$PORT" >> config.json
echo -e -n ',"settings":{"clients":[{"id":"' >> config.json
echo -e -n "$MYUUID" >> config.json
echo -e -n '","alterId":64,"security":"none"}]},"streamSettings":{"network":"ws"}},"inboundDetour":[],"outbound":{"protocol":"freedom","settings":{}}}' >> config.json
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
echo -e "$CERT_PEM" > cert.pem
echo -e "$KEY_PEM"  > key.pem
fi
./v2ray
