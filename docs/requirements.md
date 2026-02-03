# Exigences fonctionnelles (CVThèque)

## Objectif
Mettre en place une CVthèque permettant de gérer des CV techniques pour des consultants, avec un historisation par mission et des contraintes de formats de fichiers.

## Exigences principales
- **Création d’un CV technique** pour un consultant.
- **Upload obligatoire en format DOC** (format source attendu à l’import).
- **Téléchargement en DOC ou PDF** (conversion possible côté serveur si besoin).
- **Multiples CV par consultant**, chacun **rattaché à une mission** (ou un contexte de mission).

## Règles métier
- Un consultant peut avoir **plusieurs CV**, un par mission (ou version), et il doit être possible de distinguer ces versions.
- Le format importé doit être **DOC** uniquement (DOCX non mentionné dans la demande).
- Lors du téléchargement, proposer **DOC** (source) ou **PDF** (export).

## Hypothèses (à valider)
- Les missions sont gérées dans une table dédiée et référencées par les CV.
- La conversion DOC -> PDF est réalisée par un service serveur (LibreOffice, un microservice, etc.).
