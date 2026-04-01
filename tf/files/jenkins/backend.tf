terraform {
  backend "s3" {
    bucket         = "e2e-eks-three-tier-devsecops-project-bucket"
    region         = "ap-south-1"
    key            = "jenkins-tfstate/terraform.tfstate"
    dynamodb_table = "Lock-Files"
    encrypt        = true
  }
  required_version = ">=0.13.0"
  required_providers {
    aws = {
      version = ">= 2.7.0"
      source  = "hashicorp/aws"
    }
  }
}
