# resource "aws_instance" "bu1-web" {
#     ami = var.ami
#     instance_type = "t2.micro"
#     # VPC
#     # vpc_id = aws_vpc.bu1.id

#     # vpc_security_group_ids = aws_security_group.ssh_allowed.id
#     # aws_security_group = aws_security_group.ssh_allowed.id
#     # Security Group
#     # security_groups = aws_security_group.ssh_allowed.id
#     # the Public SSH key
#     key_name = aws_key_pair.aws-tgw-key-pair.id
#     # nginx installation
#     provisioner "file" {
#         source = "nginx.sh"
#         destination = "/tmp/nginx.sh"
#     }
#     provisioner "remote-exec" {
#         inline = [
#              "chmod +x /tmp/nginx.sh",
#              "sudo /tmp/nginx.sh"
#         ]
#     }
#     connection {
#         user = var.EC2_USER
#         private_key = "${file("${var.PRIVATE_KEY_PATH}")}"
#     }
# }
# // Sends your public key to the instance
# resource "aws_key_pair" "aws-tgw-key-pair" {
#     key_name = "aws-tgw-key-pair"
#     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDyTRv23Szn70NUdDHOJzT88QDmVZ9y85TQ8o+NrUTmHh9qmOhGxkT4Auiznkz7y4ttlCgRb9uUlEHQkydUydoaASdhJd6L3ms/A3g5YTuivAXU05n+8bPmc5r7KQN+xlZ80eLtDJe0DbIeXjntrbUgI1xO/1zblR00NwtUWIs91G1f4WkC98nSiu1jx6LvabF6cGSp6Xk2oRr8tkklGHoDYsYWYaus5cy2ufRVS9Owio2w8pgn9qsnZwzJfsVuv96d6kRz6w1zWAQl9dVyToS9XcaSmY8GgGMxEV+8rfte0wjGQgoH+CS+jbBwbDMj1xEWsa5qMRMzPma8cS/BVvY6KrEf/qo/VPGgPqEVyInqOWnmKc3vo4mLLwIwlwHa2SiRhwSmDZr2uTbh0Kb8fON9dPo4jCltj/wx8X0QBT6p3atebbZJF/Wm8UUm2lpRAZUyKiiFZfSQX9cQNgv4rQnKJUmzz9kVr+398QIR974Bwf5z6W/IM4Y09vsbWI9SlaM="
# }