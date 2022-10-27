#!/bin/sh
if [ ! -f UUID ]; then
  UUID="686a060a-44c9-498d-b187-9b6db11727bb"
fi

# Set config.json
sed -i "s/PORT/$PORT/g" /etc/xray/config.json
sed -i "s/UUID/$UUID/g" /etc/xray/config.json

echo starting xray platform
echo starting with UUID:$UUID
echo listening at 0.0.0.0:$PORT

exec "$@"

