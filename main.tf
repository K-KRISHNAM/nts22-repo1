
provider "aws" {
    access_key = "AKIAW5IZRWOYZWDHIEUL"
    secret_key = "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"
    region = "us-east-1"
  
}

terraform {
  backend "s3" {
      region = "us-east-1"
     bucket = "tfstatebkt-nts22"
     dynamodb_table = "tflcktable-nts22"
     workspace_key_prefix = "dds1"
     key = "dds1.tfstate"
  }

}