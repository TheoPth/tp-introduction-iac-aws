variable "region" {
  type    = string
  default = "us-east-1"
}

variable "lambda_function_name" {
  description = "Nom de la fonction lambda"
  type    = string
}

variable "random_message" {
  description =  "Taille (en mot) de la phrase random"
  type    = number
}
