resource "aws_cloudformation_stack" "this" {
  name = "route53-profile-${var.r53_profile_name}"

  capabilities = ["CAPABILITY_AUTO_EXPAND"]

  parameters = {
    r53PhzZoneIds = jsonencode(var.r53_zone_ids)
  }

  template_body = templatefile("${path.module}/cloudformation_templates/route53_profile.yaml.tftpl", {
    r53_profile_name = var.r53_profile_name
  })
  
  tags = var.tags
}
