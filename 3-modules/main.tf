module "s3" {
  source  = "./modules/s3"
  region  = var.region
  project = var.project
}

module "random_string" {
  source  = "./modules/random_string"
  project = var.project
  vpc_id  = module.network.vpc_id
}
