terraform{
    backend "s3"{
        bucket = "workspaces-mb-state"
        key = "my-workspaces-state"
        region = "us-east-1"
        use_lockfile = "true"
    }
}


provider "aws"{
    region = "us-east-1"
}