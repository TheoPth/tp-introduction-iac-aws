variable "region" {
  type    = string
  default = "us-east-1"
}

variable "bucket_name" {
  description = "Nom du bucket pour servir le fichier"
  type    = string
}

variable "random_message" {
  description =  "Taille (en mot) de la phrase random"
  type    = number
}
