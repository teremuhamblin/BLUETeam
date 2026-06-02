rule Credential_Tools
{
    meta:
        description = "Detects credential dumping tools"
        author = "BLUETeam SOC-N5"
    strings:
        $m1 = "mimikatz"
        $m2 = "sekurlsa"
        $m3 = "lsadump"
    condition:
        any of ($m*)
}
