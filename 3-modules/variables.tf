variable "region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Nom du bucket pour servir le fichier"
  type    = string
}

variable "random_string_length" {
  description =  "Taille de la chaine de charactère aléatoire généré dans le fichier html"
  type    = string
}
