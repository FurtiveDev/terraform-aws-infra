# Terraform AWS Infrastructure

Инфраструктура как код для развертывания веб-приложения в AWS

## Что создается

- VPC с публичными и приватными подсетями (2 AZ)
- EC2 инстанс с Nginx
- Security Group с открытыми портами 80, 443, 22 (SSH только по whitelist)
- S3 бакет для статических файлов
- S3 backend для хранения state

## Использование

```bash
# Скопировать пример переменных
cp terraform.tfvars.example terraform.tfvars

# Отредактировать terraform.tfvars, указать key_name и allowed_ssh_cidrs

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

## Переменные

| Переменная | Описание | По умолчанию |
|------------|----------|--------------|
| aws_region | AWS регион | eu-west-1 |
| project_name | Название проекта | webapp |
| environment | Окружение | dev |
| instance_type | Тип EC2 | t3.micro |
| key_name | SSH ключ | (обязательно) |
| allowed_ssh_cidrs | CIDR для SSH | [] |
| domain_name | Домен | "" |
