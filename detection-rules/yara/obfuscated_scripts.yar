rule Obfuscated_Scripts
{
    meta:
        description = "Detects obfuscated JS/VBS scripts"
        author = "BLUETeam SOC-N5"
    strings:
        $a = /[A-Za-z0-9]{200,}/
        $b = "FromBase64String"
    condition:
        $a or $b
}
