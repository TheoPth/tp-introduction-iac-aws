# Objectif de l'exercice
Héberger une page web static à l'aide d'un bucket s3. (et terraform dans un deuxieme temps)

# Aide détaillée
(via l'ui aws puis via terraform dans un deuxieme temps)

# Etape 1
Créer un bucket s3. Attention le nom du bucket devra commencer par "tp-2-bucket-". (Lien et credentials fournis durant le tp pour se connecter)

# Etape 2
Rendre le bucket public et le configurer pour qu'il soit en mode "Hosting static website" 
https://docs.aws.amazon.com/AmazonS3/latest/userguide/IndexDocumentSupport.html

# Etape 3
Rédiger ou prendre en ligne un exemple quelconque de fichier index.html

# Etape 4
Upload le fichier index.html que vous avez rédigé ou trouvé sur internet.

# Etape 5
Vérifier que votre fichier est correctement servi

# Etape 6
Supprimer le fichier et le bucket s3.
Reprendre à l'étape 1 avec terraform

# A savoir !
Faites un export des crédentials AWS en variables d'environnement pour qu'ils n'apparaissent pas dans le code terraform
Configuer le provider AWS pour que la région par défaut soit Paris.

Modèle d'export à faire pour que terraform utiliser les crédentials AWS via les variables d'environnement : 
export AWS_ACCESS_KEY_ID=<id>
export AWS_SECRET_ACCESS_KEY=<secret>