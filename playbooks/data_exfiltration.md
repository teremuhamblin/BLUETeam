###### data_exfiltration.md >> markdown
# PLAYBOOK
>DATA EXFILTRATION
- (SOC‑N5)

## Objectif
Détecter et stopper une exfiltration de données en cours ou réussie.

## Indicateurs clés
- Trafic sortant volumétrique
- Utilisation de protocoles inhabituels (FTP, TOR, DNS tunneling)
- Compression de fichiers (7zip, rar)
- Upload vers services cloud non autorisés

## Procédure N1
1. Vérifier l’alerte réseau.
2. Identifier la source et la destination.
3. Vérifier le volume transféré.
4. Escalader au N2 si :
   - >500 Mo transférés
   - protocole suspect
   - hôte sensible impliqué

## Procédure N2
1. Analyse réseau :
   - Netflow
   - PCAP
   - DNS logs
2. Vérifier :
   - compression récente
   - connexions vers IP inconnues
   - usage de TOR/VPN
3. Isoler l’hôte si exfiltration active.

## Procédure N3
1. Analyse forensique complète.
2. Identification des données exfiltrées.
3. Notification interne (RSSI, juridique).
4. Containment global.

## Critères de clôture
- Exfiltration stoppée
- Impact évalué
- Mesures compensatoires appliquées
