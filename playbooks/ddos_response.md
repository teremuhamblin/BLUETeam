###### ddos_response.md >> markdown
# PLAYBOOK
>DDOS RESPONSE
- (SOC‑N5)

## Objectif
Répondre à une attaque DDoS visant un service exposé.

## Procédure N1
1. Vérifier l’alerte réseau.
2. Identifier le service impacté.
3. Escalader au N2 si :
   - service indisponible
   - saturation >80%

## Procédure N2
1. Analyse du trafic :
   - volumétrique
   - applicatif
2. Activer :
   - rate limiting
   - blocage IP
   - bascule CDN/WAF
3. Coordination avec l’hébergeur.

## Procédure N3
1. Analyse post‑mortem.
2. Mise en place de protections permanentes.
3. Mise à jour des règles WAF.

## Critères de clôture
- Service stabilisé
- Attaque stoppée
- Défenses renforcées
