resource "aws_autoscaling_group" "saopaulo1_asg" {
  name_prefix           = "saopaulo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1b.id,
    aws_subnet.private-sa-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.saopaulo-tg-80.arn]
  launch_template {
    id      = aws_launch_template.saopaulo_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "saopaulo-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "saopaulo_scaling_policy" {
  name                   = "saopaulo-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.saopaulo1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "saopaulo_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.saopaulo1_asg.name
  alb_target_group_arn   = aws_lb_target_group.saopaulo-tg-80.arn
}

resource "aws_autoscaling_group" "saopaulo2_asg" {
  name_prefix           = "saopaulo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1b.id,
    aws_subnet.private-sa-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.saopaulo-tg-443.arn]
  launch_template {
    id      = aws_launch_template.saopaulo_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "saopaulo-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "saopaulo2_scaling_policy" {
  name                   = "saopaulo2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.saopaulo2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "saopaulo2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.saopaulo2_asg.name
  alb_target_group_arn   = aws_lb_target_group.saopaulo-tg-443.arn
}

resource "aws_autoscaling_group" "saopaulo3_asg" {
  name_prefix           = "saopaulo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1b.id,
    aws_subnet.private-sa-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.saopaulo-tg-514.arn]
  launch_template {
    id      = aws_launch_template.saopaulo_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "saopaulo-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "saopaulo3_scaling_policy" {
  name                   = "saopaulo2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.saopaulo2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "saopaulo3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.saopaulo2_asg.name
  alb_target_group_arn   = aws_lb_target_group.saopaulo-tg-514.arn
}

#tokyo

resource "aws_autoscaling_group" "tokyo1_asg" {
  name_prefix           = "tokyo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id,
    aws_subnet.private-ap-northeast-1d.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.tokyo-tg-80.arn]
  launch_template {
    id      = aws_launch_template.tokyo_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "tokyo-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "tokyo_scaling_policy" {
  name                   = "tokyo-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.tokyo1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "tokyo_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.tokyo1_asg.name
  alb_target_group_arn   = aws_lb_target_group.tokyo-tg-80.arn
}

resource "aws_autoscaling_group" "tokyo2_asg" {
  name_prefix           = "tokyo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id,
    aws_subnet.private-ap-northeast-1d.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.tokyo-tg-443.arn]
  launch_template {
    id      = aws_launch_template.tokyo_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "tokyo-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "tokyo2_scaling_policy" {
  name                   = "tokyo2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.tokyo2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "tokyo2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.tokyo2_asg.name
  alb_target_group_arn   = aws_lb_target_group.tokyo-tg-443.arn
}

resource "aws_autoscaling_group" "tokyo3_asg" {
  name_prefix           = "tokyo-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1c.id,
    aws_subnet.private-ap-northeast-1d.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.tokyo-tg-514.arn]
  launch_template {
    id      = aws_launch_template.tokyo_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "tokyo-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "tokyo3_scaling_policy" {
  name                   = "tokyo2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.tokyo2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "tokyo3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.tokyo2_asg.name
  alb_target_group_arn   = aws_lb_target_group.tokyo-tg-514.arn
}

#london

resource "aws_autoscaling_group" "london1_asg" {
  name_prefix           = "london-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2b.id,
    aws_subnet.private-eu-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.london-tg-80.arn]
  launch_template {
    id      = aws_launch_template.london_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "london-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "london_scaling_policy" {
  name                   = "london-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.london1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "london_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.london1_asg.name
  alb_target_group_arn   = aws_lb_target_group.london-tg-80.arn
}

resource "aws_autoscaling_group" "london2_asg" {
  name_prefix           = "london-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2b.id,
    aws_subnet.private-eu-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.london-tg-443.arn]
  launch_template {
    id      = aws_launch_template.london_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "london-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "london2_scaling_policy" {
  name                   = "london2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.london2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "london2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.london2_asg.name
  alb_target_group_arn   = aws_lb_target_group.london-tg-443.arn
}

resource "aws_autoscaling_group" "london3_asg" {
  name_prefix           = "london-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2b.id,
    aws_subnet.private-eu-west-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.london-tg-514.arn]
  launch_template {
    id      = aws_launch_template.london_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "london-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "london3_scaling_policy" {
  name                   = "london2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.london2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "london3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.london2_asg.name
  alb_target_group_arn   = aws_lb_target_group.london-tg-514.arn
}

#Newyork

resource "aws_autoscaling_group" "newyork1_asg" {
  name_prefix           = "newyork-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id,
    aws_subnet.private-us-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.newyork-tg-80.arn]
  launch_template {
    id      = aws_launch_template.newyork_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "newyork-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "newyork_scaling_policy" {
  name                   = "newyork-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.newyork1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "newyork_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.newyork1_asg.name
  alb_target_group_arn   = aws_lb_target_group.newyork-tg-80.arn
}

resource "aws_autoscaling_group" "newyork2_asg" {
  name_prefix           = "newyork-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id,
    aws_subnet.private-us-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.newyork-tg-443.arn]
  launch_template {
    id      = aws_launch_template.newyork_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "newyork-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "newyork2_scaling_policy" {
  name                   = "newyork2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.newyork2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "newyork2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.newyork2_asg.name
  alb_target_group_arn   = aws_lb_target_group.newyork-tg-443.arn
}

resource "aws_autoscaling_group" "newyork3_asg" {
  name_prefix           = "newyork-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id,
    aws_subnet.private-us-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.newyork-tg-514.arn]
  launch_template {
    id      = aws_launch_template.newyork_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "newyork-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "newyork3_scaling_policy" {
  name                   = "newyork2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.newyork2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "newyork3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.newyork2_asg.name
  alb_target_group_arn   = aws_lb_target_group.newyork-tg-514.arn
}

#Sydney

resource "aws_autoscaling_group" "sydney1_asg" {
  name_prefix           = "sydney-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2b.id,
    aws_subnet.private-ap-southeast-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.sydney-tg-80.arn]
  launch_template {
    id      = aws_launch_template.sydney_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "sydney-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "sydney_scaling_policy" {
  name                   = "sydney-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.sydney1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "sydney_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.sydney1_asg.name
  alb_target_group_arn   = aws_lb_target_group.sydney-tg-80.arn
}

resource "aws_autoscaling_group" "sydney2_asg" {
  name_prefix           = "sydney-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2b.id,
    aws_subnet.private-ap-southeast-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.sydney-tg-443.arn]
  launch_template {
    id      = aws_launch_template.sydney_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "sydney-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "sydney2_scaling_policy" {
  name                   = "sydney2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.sydney2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "sydney2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.sydney2_asg.name
  alb_target_group_arn   = aws_lb_target_group.sydney-tg-443.arn
}

resource "aws_autoscaling_group" "sydney3_asg" {
  name_prefix           = "sydney-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-southeast-2a.id,
    aws_subnet.private-ap-southeast-2b.id,
    aws_subnet.private-ap-southeast-2c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.sydney-tg-514.arn]
  launch_template {
    id      = aws_launch_template.sydney_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "sydney-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "sydney3_scaling_policy" {
  name                   = "sydney2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.sydney2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "sydney3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.sydney2_asg.name
  alb_target_group_arn   = aws_lb_target_group.sydney-tg-514.arn
}

#NCalifornia

resource "aws_autoscaling_group" "Ncalifornia1_asg" {
  name_prefix           = "Ncalifornia-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-1a.id,
    aws_subnet.private-us-west-1b.id,
    aws_subnet.private-us-west-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Ncalifornia-tg-80.arn]
  launch_template {
    id      = aws_launch_template.Ncalifornia_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "Ncalifornia-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "Ncalifornia_scaling_policy" {
  name                   = "Ncalifornia-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "Ncalifornia_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia1_asg.name
  alb_target_group_arn   = aws_lb_target_group.Ncalifornia-tg-80.arn
}

resource "aws_autoscaling_group" "Ncalifornia2_asg" {
  name_prefix           = "Ncalifornia-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-1a.id,
    aws_subnet.private-us-west-1b.id,
    aws_subnet.private-us-west-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Ncalifornia-tg-443.arn]
  launch_template {
    id      = aws_launch_template.Ncalifornia_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "Ncalifornia-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "Ncalifornia2_scaling_policy" {
  name                   = "Ncalifornia2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "Ncalifornia2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia2_asg.name
  alb_target_group_arn   = aws_lb_target_group.Ncalifornia-tg-443.arn
}

resource "aws_autoscaling_group" "Ncalifornia3_asg" {
  name_prefix           = "Ncalifornia-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-1a.id,
    aws_subnet.private-us-west-1b.id,
    aws_subnet.private-us-west-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Ncalifornia-tg-514.arn]
  launch_template {
    id      = aws_launch_template.Ncalifornia_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "Ncalifornia-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "Ncalifornia3_scaling_policy" {
  name                   = "Ncalifornia2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "Ncalifornia3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.Ncalifornia2_asg.name
  alb_target_group_arn   = aws_lb_target_group.Ncalifornia-tg-514.arn
}

#Hongkong

resource "aws_autoscaling_group" "hongkong1_asg" {
  name_prefix           = "hongkong-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1b.id,
    aws_subnet.private-ap-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.hongkong-tg-80.arn]
  launch_template {
    id      = aws_launch_template.hongkong_LT_80.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "hongkong-80"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "hongkong_scaling_policy" {
  name                   = "hongkong-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hongkong1_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "hongkong_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.hongkong1_asg.name
  alb_target_group_arn   = aws_lb_target_group.hongkong-tg-80.arn
}

resource "aws_autoscaling_group" "hongkong2_asg" {
  name_prefix           = "hongkong-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1b.id,
    aws_subnet.private-ap-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.hongkong-tg-443.arn]
  launch_template {
    id      = aws_launch_template.hongkong_LT_443.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "hongkong-443"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "hongkong2_scaling_policy" {
  name                   = "hongkong2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hongkong2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "hongkong2_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.hongkong2_asg.name
  alb_target_group_arn   = aws_lb_target_group.hongkong-tg-443.arn
}

resource "aws_autoscaling_group" "hongkong3_asg" {
  name_prefix           = "hongkong-auto-scaling-group-"
  min_size              = 1
  max_size              = 4
  desired_capacity      = 3
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1b.id,
    aws_subnet.private-ap-east-1c.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.hongkong-tg-514.arn]
  launch_template {
    id      = aws_launch_template.hongkong_LT_514.id
    version = "$Latest"
  }
  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  # Instance protection for terminating
  initial_lifecycle_hook {
    name                  = "scale-in-protection"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_TERMINATING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 300
  }
  tag {
    key                 = "Name"
    value               = "hongkong-514"
    propagate_at_launch = true
  }
  tag {
    key                 = "Environment"
    value               = "Production"
    propagate_at_launch = true
  }
}

# Auto Scaling Policy
resource "aws_autoscaling_policy" "hongkong3_scaling_policy" {
  name                   = "hongkong2-cpu-target"
  autoscaling_group_name = aws_autoscaling_group.hongkong2_asg.name
  policy_type = "TargetTrackingScaling"
  estimated_instance_warmup = 120
  target_tracking_configuration {
    predefined_metric_specification {
      predefined_metric_type = "ASGAverageCPUUtilization"
    }
    target_value = 75.0
  }
}
# Enabling instance scale-in protection
resource "aws_autoscaling_attachment" "hongkong3_asg_attachment" {
  autoscaling_group_name = aws_autoscaling_group.hongkong2_asg.name
  alb_target_group_arn   = aws_lb_target_group.hongkong-tg-514.arn
}

