#!/bin/sh

# パスフレーズを設定
PASSPHRASE="mypassword"

# ファイルを復号化
openssl enc -aes-256-cbc -d -in hello.txt.enc -out hello_decrypted.txt -k $PASSPHRASE -pbkdf2 -iter 100000

echo "File decrypted as hello_decrypted.txt"
