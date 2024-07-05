#!/bin/sh

# パスフレーズを設定
PASSPHRASE="mypassword"

# ファイルを暗号化
openssl enc -aes-256-cbc -salt -in hello.txt -out hello.txt.enc -k $PASSPHRASE -pbkdf2 -iter 100000

echo "File encrypted as hello.txt.enc"
