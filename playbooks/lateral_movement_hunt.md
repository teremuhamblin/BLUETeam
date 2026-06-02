# PLAYBOOK — LATERAL MOVEMENT HUNT (SOC‑N5)

## Objectif
Détecter, confirmer et contenir un mouvement latéral actif ou suspecté dans l’infrastructure.

## Indicateurs clés
- Connexions RDP/SMB anormales
- Authentifications multiples sur comptes sensibles
- Utilisation de PsExec, WMI, WinRM
- Création de services distants
- Transferts de fichiers inhabituels (C$, ADMIN$)

## Procédure N1
1. Vérifier les alertes SIEM (RDP, SMB, Kerberos, NTLM).
2. Identifier les comptes impliqués.
3. Cartographier les machines sources → destinations.
4. Escalader au N2 si :
   - compte admin impliqué
   - propagation sur >2 hôtes
   - exécution de commandes distantes

## Procédure N2
1. Extraire les logs :
   - Windows Security (4624, 4625, 4672)
   - Sysmon (1, 3, 11, 13)
2. Vérifier :
   - PsExec : `psexesvc.exe`
   - WMI : `wmiprvse.exe`
   - WinRM : `wsmprovhost.exe`
3. Confirmer la chaîne de mouvement latéral.
4. Isoler les hôtes compromis.

## Procédure N3
1. Analyse mémoire (Volatility, Rekall).
2. Reconstruction de la kill chain.
3. Identification du pivot initial.
4. Containment global :
   - reset mots de passe
   - rotation des clés
   - blocage des comptes
   - segmentation réseau

## Éléments de preuve
- Logs Windows + Sysmon
- Timeline des connexions
- Dump mémoire
- Hashs exécutables suspects

## Critères de clôture
- Aucun mouvement latéral actif
- Comptes réinitialisés
- Hôtes nettoyés et validés
