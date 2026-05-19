variable "bucket_name" {
  description = "Nombre único del bucket S3"
  type        = string
}

variable "environment" {
  description = "Entorno de despliegue (dev, staging, prod)"
  type        = string
}

variable "sse_algorithm" {
  description = "Algoritmo de cifrado en reposo"
  type        = string
  default     = "AES256"
}
