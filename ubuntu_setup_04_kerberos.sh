sudo apt-get install -y   krb5-user
sudo apt-get install -y   krb5-config
sudo apt-get install -y   kstart

user="vavolkl"

printf "%b" "addent -password -p $user -k 1 -e aes256-cts\n$pass\naddent -password -p $user -k 1 -e arcfour-hmac-md5\n$pass\nwrite_kt $user.keytab" | ktutil

printf "%b" "read_kt $user.keytab\nlist" | ktutil
