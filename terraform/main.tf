resource "aws_instance" "kimai" {
  ami           = var.ami_id
  instance_type = var.instance_type
  subnet_id     = var.subnet_id
  key_name      = var.key_name

  tags = {
    Name = "kimai"
  }

  vpc_security_group_ids = [
    # You might need to find the actual SG ID using AWS Console or CLI
    "sg-09328a13b7916ba38" # Replace with actual SG ID for launch-wizard-2
  ]
}

