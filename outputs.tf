output "cloudformation_id" {
  value = aws_cloudformation_stack.this.id
}

output "cloudformation_output" {
  value = aws_cloudformation_stack.this.outputs
}