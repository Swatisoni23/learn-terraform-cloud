provider "aws" {
    region = var.region
}

module "s3" {
    source = "./s3"
}