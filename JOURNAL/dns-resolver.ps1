param ($N, $S)

for ($x=1; $x -le 254; $x++) {
    
    $IPA = Resolve-DnsName -DnsOnly "$N.$x" -Server $S -ErrorAction Ignore | ForEach-Object {$_.Name}
    $HN =  Resolve-DnsName -DnsOnly "$N.$x" -Server $S -ErrorAction Ignore | ForEach-Object {$_.NameHost}
    $IPA | ForEach-Object {
        $L = $IPA.split('.')[0]
        echo "$N.$L $HN"
    }
}