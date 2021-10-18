output "aws_security_group_jenkins_server_details" {
  value = aws_security_group.web_traffic
}

output "jenkins_ip_address" {
  value = aws_instance.jenkins.public_dns
}

output "s3_bucket_name" {
  value = aws_s3_bucket.my-s3-bucket.id
}
output "s3_bucket_region" {
  value = aws_s3_bucket.my-s3-bucket.region
}

