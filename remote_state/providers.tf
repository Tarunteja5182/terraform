
terraform {
    backend "s3" {
    bucket         = "maheshbabu-remote" 
    key            = "maheshbabu-state.tfstate" 
    region         = "us-east-1"
    use_lockfile = true
  }
}

provider "aws"{
    region = "us-east-1"
}