module "s3" {
  source  = "./modules/lambda"
}

module "random_string" {
  source  = "./modules/hello_world_random_string"
}
