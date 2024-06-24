terraform {
    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = ">= 4.22.0"
        }

        docker = {
            source  = "kreuzwerker/docker"
            version = ">= 3.0.0"
        }
    }

    required_version = "~> 1.0"
}

provider "aws" {
    region = var.aws_region

    default_tags {
        tags = var.default_tags
    }
}

provider "docker" {
  registry_auth {
      address     = "790590917886.dkr.ecr.ap-northeast-1.amazonaws.com"
      config_file = pathexpand("~/.docker/config.json")
  }
}