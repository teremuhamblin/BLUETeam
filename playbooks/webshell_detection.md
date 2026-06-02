###### webshell_detecton.md >> markdown
# PLAYBOOK
>WEBSHELL DETECTION
- (SOC‑N5)

## Objectif
Détecter, analyser et supprimer une webshell sur un serveur exposé.

## Indicateurs clés
- Fichiers .php/.aspx suspects
- Exécution de commandes via HTTP
- Logs web anormaux
- Uploads récents

## Procédure N1
1. Vérifier l’alerte WAF/SIEM.
2. Identifier le fichier suspect.
3. Escalader au N2 si :
   - exécution de commandes
   - upload confirmé

## Procédure N2
1. Analyse du fichier :
   - obfuscation
   - fonctions système
2. Vérifier :
   - logs Apache/IIS
   - connexions sortantes
3. Isoler le serveur si compromission active.

## Procédure N3
1. Analyse forensique complète.
2. Reconstruction de la compromission.
3. Patch + durcissement.
4. Re-déploiement propre.

## Critères de clôture
- Webshell supprimée
- Serveur réinstallé ou nettoyé
- Vulnérabilité corrigée
