# Making variables to enter network address ($N) with dns server IP ($S)
param ($N, $S)

# Making for loop to resolve dns names within the foster network
for ($x=1; $x -le 254; $x++) {
    
    $IPA = Resolve-DnsName -DnsOnly "$N.$x" -Server $S -ErrorAction Ignore | ForEach-Object {$_.Name}
    $HN =  Resolve-DnsName -DnsOnly "$N.$x" -Server $S -ErrorAction Ignore | ForEach-Object {$_.NameHost}
    $IPA | ForEach-Object {
        $L = $IPA.split('.')[0]
        echo "$N.$L $HN"
    }
}
