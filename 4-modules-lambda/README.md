## Tp 4
Création de 2 modules

But du TP : Créer deux modules qui communique dans le but de servir une phrase random grace à une lambda 
Variables attendues : une nombre de mot random pour la taille de la phrase qui sera affichée

## Terraform global
- Output : résultat de l'invocation de la lambda

### module lambda
- Crée un bucket s3 qui sert un fichier sur le web. Le nom du bucket est passé en variable
- Output : résultat de l'invocation de la lambda

### module Random sentence
- Crée une phrase aléatoire en fonction d'une variable qui définie le nombre de mots
- Prend en parametre le nombre de charactère de la phrase
- Output : une phrase composé du nombre de mot passé en argument