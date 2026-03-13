resource "aws_kms_key" "a5581126-26d1-4f5b-a18f-09595bf31914" {

  description             = "KMS Key to encrypt/decrypt SFTP JWT"
  key_usage               = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"

  policy = <<POLICY
{
  "Version" : "2012-10-17",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::023670702506:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "Allow use of the key",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "arn:aws:iam::023670702506:role/sftp-ecs-stack-ECSTaskRole-1RC88QKTUZ33T"
    },
    "Action" : [ "kms:DescribeKey", "kms:Encrypt", "kms:Decrypt", "kms:ReEncrypt*", "kms:GenerateDataKey", "kms:GenerateDataKeyWithoutPlaintext" ],
    "Resource" : "*"
  } ]
}
POLICY

  tags = {
    Customer = "INTERNAL-SFTP"
  }


}