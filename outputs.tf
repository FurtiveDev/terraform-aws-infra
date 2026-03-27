output "vpc_id" {
  description = "ID созданной VPC"
  value       = aws_vpc.main.id
}

output "public_subnet_ids" {
  description = "ID публичных подсетей"
  value       = aws_subnet.public[*].id
}

output "private_subnet_ids" {
  description = "ID приватных подсетей"
  value       = aws_subnet.private[*].id
}

output "instance_id" {
  description = "ID EC2 инстанса"
  value       = aws_instance.web.id
}

output "instance_public_ip" {
  description = "Публичный IP инстанса"
  value       = aws_instance.web.public_ip
}

output "instance_public_dns" {
  description = "Публичный DNS инстанса"
  value       = aws_instance.web.public_dns
}

output "s3_bucket_name" {
  description = "Название S3 бакета"
  value       = aws_s3_bucket.static.id
}

output "s3_bucket_arn" {
  description = "ARN S3 бакета"
  value       = aws_s3_bucket.static.arn
}
