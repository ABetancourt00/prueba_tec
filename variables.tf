variable "aws_region" {
  description = "Región de AWS donde se crea el bucket"
  type        = string
  default     = "us-east-1"
}

variable "bucket_name" {
  description = "Nombre base del bucket (se le agrega el entorno)"
  type        = string
}

variable "environment" {
  description = "Entorno: dev, staging, prod"
  type        = string
  default     = "dev"
}
