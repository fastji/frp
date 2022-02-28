rm -rf ./release/sdk
mkdir -p ./release/sdk

go get golang.org/x/mobile/cmd/gobind
gomobile init

echo ">>>>> building frpc sdk..."
gomobile bind -o frpc.aar -target=android ./cmd/frpc/sub

mv frpc* ./release/sdk

echo "Done."
