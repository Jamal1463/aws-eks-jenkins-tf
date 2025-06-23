output "my_iam_user_complete_details" {
  value = aws_iam_user.eks_iam_user
}

output "EKS_CLUSTER_ROLE_ARN" {
  value = aws_iam_role.eks_cluster_iam_role.arn
}

output "NODE_GROUP_ROLE_ARN" {
  value = aws_iam_role.node_group.arn
}
