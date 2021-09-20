resource "aws_cloud9_environment_ec2" "environment" {
  count                       = var.create_environment ? var.enviroment_count : 0
  name                        = var.name
  instance_type               = var.instance_type
  automatic_stop_time_minutes = var.automatic_stop_time_minutes
  description                 = var.description
  owner_arn                   = var.owner_arn
  subnet_id                   = var.subnet_id
  tags = merge(
    {
      "NameCount" = var.enviroment_count > 1 || var.use_num_suffix ? format("%s-%d", var.name, 
        count.index + 1) : var.name
    },
    var.tags,
  )
}
