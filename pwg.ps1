Function Generate-Password {
        [String] $a = "abcdefghijkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789-+%!()=/"
        $x = New-Object "System.Byte[]" 20
        (New-Object System.Security.Cryptography.RNGCryptoServiceProvider).GetBytes($x)
        [String] $p = ""
        ForEach ($t in $x) {
                $p += $a[$t % 64]
        }
        Write-Host $p
}
