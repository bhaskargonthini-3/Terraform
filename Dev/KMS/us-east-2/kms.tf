resource "aws_kms_key" "mrk-8ab43d65c4ea4269a437ec72fd420aef" {

  description             = ""
  key_usage               = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"

  policy = <<POLICY
{
  "Version" : "2012-10-17",
  "Id" : "key-consolepolicy-3",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : [ "arn:aws:iam::727424650729:root", "arn:aws:iam::023670702506:root" ]
    },
    "Action" : "kms:*",
    "Resource" : "*"
  } ]
}
POLICY

  tags = {
    Name = "mrk-8ab43d65c4ea4269a437ec72fd420aef"
  }


}


resource "aws_kms_alias" "rds_qs" {

  name          = "alias/rds-qs"
  target_key_id = aws_kms_key.mrk-8ab43d65c4ea4269a437ec72fd420aef.key_id

}