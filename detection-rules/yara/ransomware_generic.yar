rule Ransomware_Generic
{
    meta:
        description = "Detects generic ransomware patterns"
        author = "BLUETeam SOC-N5"
    strings:
        $a = "AES" nocase
        $b = "RSA" nocase
        $c = "encrypt" nocase
    condition:
        any of ($a,$b,$c)
}
