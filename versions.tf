## terraform version
terraform {
  required_version = "~>1.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~>4.27"
    }
  }
}


## provider block
provider "aws" {
  region  = var.aws_region
  
}

### The profile for API operations. If not set, the default profile created with aws configure will be used.

/*
Note-1:  AWS Credentials Profile (profile = "default") configured on your local desktop terminal  
$HOME/.aws/credentials
*/