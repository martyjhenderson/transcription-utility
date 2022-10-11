resource "aws_sagemaker_code_repository" "utility_repo" {
  code_repository_name = "demo-transcription"
  git_config {
    repository_url = "https://github.com/martyjhenderson/transcription-utility.git"
  }
}
resource "aws_sagemaker_notebook_instance" "utility_repo_demo" {
  name                    = "transcription-demo-instance"
  role_arn                = aws_iam_role.sagemaker_notebook_role.arn
  instance_type           = "ml.t2.medium"
  default_code_repository = aws_sagemaker_code_repository.utility_repo.code_repository_name
}