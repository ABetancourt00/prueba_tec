terraform {
  required_version = ">= 1.5.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
}

module "s3_bucket" {
  source = "./modules/s3_bucket"

  bucket_name = "${var.bucket_name}-${var.environment}"
  environment = var.environment
}

output "bucket_arn" {
  description = "ARN del bucket S3 creado"
  value       = module.s3_bucket.bucket_arn
}
