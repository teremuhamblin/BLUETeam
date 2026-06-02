###### privilege_escalation.md >> markdown 
# PLAYBOOK
>PRIVILEGE ESCALATION
- (SOC‑N5)

## Objectif
Identifier et stopper une tentative d’élévation de privilèges locale ou distante.

## Indicateurs clés
- Exploitation de vulnérabilités locales (CVE)
- Ajout d’un utilisateur au groupe Administrators
- Token manipulation (SeDebugPrivilege)
- Exécution d’outils : Mimikatz, SharpHound, JuicyPotato

## Procédure N1
1. Vérifier l’alerte SIEM.
2. Identifier l’hôte et l’utilisateur.
3. Vérifier si un binaire connu est impliqué.
4. Escalader au N2 si :
   - Mimikatz détecté
   - modification de groupes
   - exploitation CVE

## Procédure N2
1. Collecter :
   - Sysmon (Event 1, 10, 11)
   - Windows Security (4670, 4672, 4732)
2. Vérifier :
   - LSASS access
   - création de comptes
   - privilèges spéciaux
3. Isoler l’hôte si compromission confirmée.

## Procédure N3
1. Analyse mémoire LSASS.
2. Vérification de persistence (RunKeys, Services, Scheduled Tasks).
3. Patch des vulnérabilités exploitées.
4. Rotation des secrets AD.

## Critères de clôture
- Aucun accès admin non autorisé
- Persistence supprimée
- Vulnérabilité corrigée
