rule PHP_Webshell
{
    meta:
        description = "Detects common PHP webshell patterns"
        author = "BLUETeam SOC-N5"
    strings:
        $cmd = "system(" nocase
        $eval = "eval(" nocase
        $base = "base64_decode(" nocase
    condition:
        any of ($cmd,$eval,$base)
}
