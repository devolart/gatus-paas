if [ ! -f gatus ]; then
    echo "Downloading Gatus..."
    curl -L -O https://github.com/devolart/gatus-paas/releases/download/v1.0/gatus
    chmod +x gatus
fi
if [ -n "${CONFIG_BASE64}" ]; then
    echo "Decoding config..."
    echo "${CONFIG_BASE64}" | base64 -d > config.yaml
    export GATUS_CONFIG_PATH="config.yaml"
fi
echo "Running Gatus..."
./gatus