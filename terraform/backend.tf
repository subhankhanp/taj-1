terraform {
  backend "s3" {
    bucket = "subhan"
    key = "server_name/statefile"
    region = "ap-south-1"
  }
} 
