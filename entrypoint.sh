cd /v2raybin
echo -e -n '{"log":{"loglevel":"warning"},"inbound":{"protocol":"shadowsocks","port":' > config.json
echo -e -n "$PORT" >> config.json
echo -e -n ',"settings":{"method": "' >> config.json
echo -e -n 'chacha20' >> config.json
echo -e -n '","udp": false, "password": "v2ray"}},"inboundDetour":[],"outbound":{"protocol":"freedom","settings":{}}}' >> config.json
if [ "$CERT_PEM" != "$KEY_PEM" ]; then
echo -e "$CERT_PEM" > cert.pem
echo -e "$KEY_PEM"  > key.pem
fi
./v2ray
