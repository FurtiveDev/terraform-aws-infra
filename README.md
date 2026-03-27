# Terraform AWS Infrastructure

Инфраструктура как код для развертывания веб-приложения в AWS

## Что создается

- VPC с публичными и приватными подсетями (2 AZ)
- EC2 инстанс с Apache httpd
- Security Group с открытыми портами 80, 443, 22
- S3 бакет для статических файлов

## Использование

```bash
# Скопировать пример переменных
cp terraform.tfvars.example terraform.tfvars

# Отредактировать terraform.tfvars, указать key_name

# Инициализация
terraform init

# План изменений
terraform plan

# Применение
terraform apply

# Уничтожение
terraform destroy
```

## Требования

- Terraform >= 1.0
- AWS CLI с настроенной аутентификацией
- SSH ключ в AWS (key_name)