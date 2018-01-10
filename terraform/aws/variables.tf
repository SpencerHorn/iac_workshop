variable "aws_access_key" {}
variable "aws_secret_key" {}

variable "aws_region" {
  description = "EC2 Region for the VPC"
  default = "us-west-2"
}

variable "availability_zone" {
  description = "Availability Zone"
  default = "us-west-2c"
}

variable "amis" {
    description = "AMIs by region"
    default = {
        us-west-2 = "ami-d2c924b2" 
    }
}

variable "vpc-fullcidr" {
  default = "172.16.0.0/16"
  description = "vpc cdir"
}

variable "key_name" {
  default = "do_terra_rsa"
  description = "Name of your SSH key in EC2"
}

# You can update this to match your personal public SSH key half.
variable "public_key" {
  default = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC1/GsTruPapf29LdAMCeFZklAimeIN49fyOSk+ZgdEDNABvJsgFA5eY4PRP41onu0a1aY1cIhXj26Jr8GgsrqQCiPa3Nyj800OF0HLpHNuVUHhtm+g6Avhi/z5FuZjw72TOK2roXytSoevl5hEaYxqMtFBKg7KqyWxpfS+JKcdLsoIpuvCEkwpQqbF+GOmPdaAiN0rSsqf40hKAf9gyi85WZ8jJgM9c0QoNsVJoyIuA2qtidevJGWEXx4bWqf08RIclMeoT8NXjiWZcbRceDZlgCqmx2rCaLQLfaxWvD9GeheB4xTMeN0vY2SrLDyEXS6vVtb2N/62gqd77m6yvsYR spencerhorn@Endure-Unspecified.local"
  description = "SSH Public key half to use for centos on the new host"
}

variable "key_path" {
  default = "/home/spencerhorn/codemash_as_a_code"
  description = "Path to your SSH private key half on local dev machine"
}

variable use_public_ip { 
  default = true 
}

