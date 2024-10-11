resource "aws_route53profiles_profile" "this" {
  name = var.r53_profile_name
  tags = var.tags
}

resource "aws_route53profiles_resource_association" "this" {
  for_each = toset(var.r53_zone_ids)

  name         = each.key
  profile_id   = aws_route53profiles_profile.this.id
  resource_arn = "arn:aws:route53:::${each.key}"
}
