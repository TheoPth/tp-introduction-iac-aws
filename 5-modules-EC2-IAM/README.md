# TP Terraform: Déploiement AWS avec Modules, Variables, et Outputs

## Objectif
Le but de ce TP est de vous familiariser avec Terraform en déployant des ressources AWS à l'aide de modules, de variables, d'outputs.
Résultat final : Un module TF modulaire et clef en main pour déployer des EC2s et en être automatiquement notifier de leur création (par email).

Installation de terraform sur cloud9 :
```bash
tf_version=1.7.4
wget https://releases.hashicorp.com/terraform/1.7.4/terraform_1.7.4_linux_amd64.zip;
sudo unzip terraform_*_linux_amd64.zip -d /usr/local/bin;
rm terraform_*_linux_amd64.zip;
terraform --version;
```

## ETAPE 1: Création des modules.
## Modules Terraform
Les deux modules terraform seront dans un repo github sur votre compte perso. Vous partagerez votre repo avec le user github : TheoPth.
L'implémentation du code tf est libre. Seule contrainte, il doit être fonctionnel... et répondre aux éxigences minimales décrit dans l'énoncé.

### Module 1: Déploiement d'une EC2
Créez un module Terraform pour déployer une instance EC2. Le module déploie une seule EC2. L'ami de l'EC2 sera récupérée via une data source terraform. L'ami doit etre la plus récente Amazon Linux disponible dans la région.

Spécifications attendues du module.
Variables :
  - nom de l'instance
  - type d'instance (eg: t3.nano)
  - users data (optionnel)
  - nom de l'instance role

Output:
  - l'ID de l'instance

Tester le module pour voir s'il fonctionne. Conseil : créer un dossier test dans le dossier du module qui utilise et implémente le module.

### Module 2: Création d'une file SNS
Il est conseillé de créer les ressources manuellement dans un premier temps pour se familiariser avec les technos AWS.

Créer un module Terraform pour déployer une file SNS et une subscription avec votre adresse email. Vous pourrez ainsi recevoir les notifications.
Le module déploie aussi une lambda qui pousse des messages sur cette file SNS.

Spécifications attendues du module.
Variables :
  - Nom de la file SNS
  - Nom de la lambda
  - Liste des emails qui souscrivent à la file SNS
  - La notification à envoyer aux emails qui ont une subscription
  - L'arn du role de la lambda


### Utilisation des précédents modules : 
Vous assemblerez les deux modules terraforms que vous venez de créer dans le but d'être notifié lorsque qu'une nouvelle EC2 est déployée sur AWS.
L'implémentation de la notification est libre.

### Utilisation des modules pour plusieurs EC2 :
Utilisez une liste qui répertorie vos EC2. Vous utiliserez un for_each pour déployer toutes vos EC2.
Cette liste d'EC2 sera une variable et l'object EC2 sera défini ainsi:
- nom de l'instance
- type d'instance => optionnel
- users data => optionnel
- nom de l'instance role => optionnel
Utilisez un fichier terraform.tfvars qui permet de charger automatiquement vos variables.

### Création d'une notification automatique
Cette partie est ouverte, à vous de trouver le bon service et l'implémentation terraform.
Mise en situation :
Vous avez implémenté un module qui permet de déployer une EC2 et un module qui permet d'être notifié lorsqu'une EC2 est déployée. Vous partagez votre module avec le monde entier. 
Un utilisateur de votre module est très content des fonctionnalités. Malheureusement après avoir laissé son alternant utiliser le module, celui-ci a déployé 1000 EC2 d'un coup sans faire exprès. 
Il souhaite avoir une notification si 2 ou + ou de 2 EC2 sont déployées en moins de 30 secondes pour être sûr que cette erreur soit rapidement identifiée si elle se reproduit.

=> Implétez cette fonctionnalité.

### Evolutions possibles (pts BONUS)
1. Variabiliser les User data de l'EC2 pour déployer ce que l'on veut à la volée.
2. Exporter l'ip de l'EC2 pour recevoir l'addresse ip dans l'email.
3. Variabiliser le déploiement de server web nginx ou httd selon la valeur passée en argument.
4. Implémenter Semantic Release 
5. Générer la doc terraform (terraform-docs)
6. Ajouter des conditions précises pour checker les inputs des modules (cf. Condition en terraform)