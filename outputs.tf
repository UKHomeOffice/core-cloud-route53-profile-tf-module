output "route53_profile_name" {
  value = aws_route53profiles_profile.this.name
}

output "route53_profile_arn" {
  value = aws_route53profiles_profile.this.arn
}

output "route53_profile_id" {
  value = aws_route53profiles_profile.this.arn
}

output "aws_route53profiles_resource_association_name" {
  value = values(aws_route53profiles_resource_association.this)[*].name
}

output "aws_route53profiles_resource_association_id" {
  value = values(aws_route53profiles_resource_association.this)[*].id
}
