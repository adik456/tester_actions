resource "aws_s3_bucket" "ci_cd_bucket" {
  bucket = "ag-my-terraform-ci-cd-bucket-example" 

  tags = {
    Name        = "ag_CiCdBucket"
    ManagedBy   = "ag_GitHubActions"
  }
}