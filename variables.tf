variable "awsRegion" {
  description = "aws region"
  type        = string
}

variable "ami" {
    type = string
    
    # default =  {
    #     ca-central-1 = "ami-0a2f4238d9c1a5128"
    #     eu-west-2 = "ami-03dea29b0216a1e03"
    #     us-east-1 = "ami-0c2a1acae6667e438"
    # }
}

variable "EC2_USER" {}