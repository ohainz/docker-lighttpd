#!/bin/bash

echo "Try to start the service lighttpd..."
systemctl start lighttpd
echo "The service lighttpd is started"

echo "Wait infinity"
sleep infinity
