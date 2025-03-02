savedcmd_/usr/local/tap/tun.mod := printf '%s\n'   tun.o | awk '!x[$$0]++ { print("/usr/local/tap/"$$0) }' > /usr/local/tap/tun.mod
