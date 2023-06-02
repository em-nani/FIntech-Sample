resource "aws_ecr_repository" "fintech-sample" {
  name                 = "FinTech"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = false
  }
}