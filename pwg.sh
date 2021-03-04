cat /dev/urandom |tr -cd "abcdefghijkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789\-+\%\!()=/" |fold -w20 |head -1
