###### insider_threat.md >> markdown
# PLAYBOOK
>INSIDER THREAT
- (SOC‑N5)

## Objectif
Détecter et gérer une menace interne (malveillance ou négligence).

## Procédure N1
1. Vérifier l’alerte (accès anormal, copie massive).
2. Identifier l’utilisateur.
3. Escalader au N2 si :
   - données sensibles
   - comportement répétitif

## Procédure N2
1. Analyse des logs :
   - AD
   - Proxy
   - DLP
2. Vérifier :
   - copies USB
   - uploads cloud
   - accès hors horaires

## Procédure N3
1. Coordination RH + juridique.
2. Containment :
   - désactivation du compte
   - confiscation matériel
3. Analyse forensique complète.

## Critères de clôture
- Incident traité
- Risque neutralisé
- Documentation complète
