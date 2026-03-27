variable "aws_region" {
  description = "AWS region для развертывания"
  type        = string
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Название проекта, используется в тегах и именах ресурсов"
  type        = string
  default     = "webapp"
}

variable "environment" {
  description = "Окружение (dev, staging, prod)"
  type        = string
  default     = "dev"

  validation {
    condition     = contains(["dev", "staging", "prod"], var.environment)
    error_message = "Environment должен быть одним из: dev, staging, prod."
  }
}

variable "vpc_cidr" {
  description = "CIDR блок для VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "instance_type" {
  description = "Тип EC2 инстанса"
  type        = string
  default     = "t3.micro"
}

variable "key_name" {
  description = "Название SSH ключа в AWS"
  type        = string
}

variable "allowed_ssh_cidrs" {
  description = "CIDR блоки, которым разрешен SSH доступ"
  type        = list(string)
  default     = []
}

variable "db_password" {
  description = "Пароль для базы данных (если используется)"
  type        = string
  sensitive   = true
  default     = ""
}

variable "domain_name" {
  description = "Доменное имя для приложения"
  type        = string
  default     = ""
}
