resource "aws_sns_topic" "sns-demo" {
  name = var.topic_name
  tags = {
    team = var.my-team
  }
}

resource "aws_sns_topic_subscription" "email-target" {
  topic_arn = aws_sns_topic.sns-demo.arn
  protocol  = var.my-protocol
  endpoint  = var.my-endpoint
}
