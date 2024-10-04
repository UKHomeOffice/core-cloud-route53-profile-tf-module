variable "r53_profile_name" {
  description = "The name of the route53 profile"
  type        = string
}

variable "r53_zone_ids" {
  description = "The list of Route53 Private Zone IDs to associate with the Route53 Profile"
  type        = list(string)
}
