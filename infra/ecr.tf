resource "aws_ecr_repository" "FinTech" {
  name                 = "FinTech"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}