# module "key_pair" {
#   source = "terraform-aws-modules/key-pair/aws"

#   key_name           = "yaya"
#   create_private_key = true
#   tags = {
#     Name = "yaya"
#   }

# }
# resource "local_file" "private_key" {
#     content  = module.key_pair.private_key_pem
#     filename = "private_key.pem"
# }

resource "aws_key_pair" "deployer" {
  key_name   = "yaya-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDOH4P60UkGeisJuhRDVMgOQesAjBjKEMgnww4hClFF4uSMbcOh6m6pt0QyZ7ArqIurFqpAH6ysysQmFI5JRhMAJ0Tk2QVazA60Rw1eyGUJUc0kzp+pkCe/wf9IzYu4BBlbSERNuRmcV6WfGHNF788UgD0wSh1Ca7Lx7LMBAvb4PzODcSGWXd4NO36NGjdQZ2wf+wGdcRoAXWz5iLa3n4J25FfUpydWtJAVVJwPUObazXJjfnb4gnAUh+rdHUpecsPJQozxYbQyrUWG2QzTYoJwF2aPT9/dv6uRl4F56EDNeZKLi50DyArGTbZzTbgU+8+mWf8kklIb7ijl8Qc9YVTT computershop@DESKTOP-DDHDAV3"
}