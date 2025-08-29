module "rsg29" {
    source = "../child/resource group"
    rg_name = "290825"
    rg_location = "West Europe"
}

module "str29" {
    depends_on = [ module.rsg29 ]
    source = "../child/storage_acc"
    str_acc_name = "str290825"
    rg_name = "290825"
    rg_location = "West Europe"
}