cryptsetup --type luks2 --pbkdf argon2id --cipher serpent-xts-plain64 --key-size 512 --hash sha512 --use-random --verify-passphrase luksFormat /dev/archlvm/root
cryptsetup open /dev/archlvm/root root

