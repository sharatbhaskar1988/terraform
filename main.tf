module "resource_group" {
  source = "./modules/resource_group"
  env = var.env
  location = var.location
}


module "key_vault" {

  source = "./modules/key_vault"
  env = var.env
  location = var.location
  rg_name = module.resource_group.rg_name

}


module "storage" {

  source = "./modules/storage_account"
  rg_name = module.resource_group.rg_name
  location = var.location
  
}