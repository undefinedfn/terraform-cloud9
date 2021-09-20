
output "cloud9_environment_id" {
    description = "The ID of the enviroment"
    value       = aws_cloud9_environment_ec2.environment.*.id
}

output "cloud9_environment_arn" {
    description = "The ARN of the environment. "
    value       = aws_cloud9_environment_ec2.environment.*.arn
}
 
output "cloud9_environment_type" {
    description = "The type of the environment (e.g. ssh or ec2)"
    value       = aws_cloud9_environment_ec2.environment.*.type
}
