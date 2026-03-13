resource "aws_kms_key" "a9faa5d0-ca98-4a53-a498-b22800ab069a" {

  description             = ""
  key_usage               = "ENCRYPT_DECRYPT"
  customer_master_key_spec = "SYMMETRIC_DEFAULT"

  policy = <<POLICY
{
  "Version" : "2012-10-17",
  "Id" : "Key policy created by CloudTrail",
  "Statement" : [ {
    "Sid" : "Enable IAM User Permissions",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : [ "arn:aws:sts::023670702506:assumed-role/AWSReservedSSO_AdminAccess_ee7212ae355031df/divakar.jegathesa@scienaptic.com", "arn:aws:iam::023670702506:root" ]
    },
    "Action" : "kms:*",
    "Resource" : "*"
  }, {
    "Sid" : "Allow CloudTrail to encrypt logs",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "cloudtrail.amazonaws.com"
    },
    "Action" : "kms:GenerateDataKey*",
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "aws:SourceArn" : "arn:aws:cloudtrail:us-west-2:023670702506:trail/s3-sms-dump-bucket"
      },
      "StringLike" : {
        "kms:EncryptionContext:aws:cloudtrail:arn" : "arn:aws:cloudtrail:*:023670702506:trail/*"
      }
    }
  }, {
    "Sid" : "Allow CloudTrail to describe key",
    "Effect" : "Allow",
    "Principal" : {
      "Service" : "cloudtrail.amazonaws.com"
    },
    "Action" : "kms:DescribeKey",
    "Resource" : "*"
  }, {
    "Sid" : "Allow principals in the account to decrypt log files",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "*"
    },
    "Action" : [ "kms:Decrypt", "kms:ReEncryptFrom" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "kms:CallerAccount" : "023670702506"
      },
      "StringLike" : {
        "kms:EncryptionContext:aws:cloudtrail:arn" : "arn:aws:cloudtrail:*:023670702506:trail/*"
      }
    }
  }, {
    "Sid" : "Allow alias creation during setup",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "*"
    },
    "Action" : "kms:CreateAlias",
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "kms:CallerAccount" : "023670702506",
        "kms:ViaService" : "ec2.us-west-2.amazonaws.com"
      }
    }
  }, {
    "Sid" : "Enable cross account log decryption",
    "Effect" : "Allow",
    "Principal" : {
      "AWS" : "*"
    },
    "Action" : [ "kms:Decrypt", "kms:ReEncryptFrom" ],
    "Resource" : "*",
    "Condition" : {
      "StringEquals" : {
        "kms:CallerAccount" : "023670702506"
      },
      "StringLike" : {
        "kms:EncryptionContext:aws:cloudtrail:arn" : "arn:aws:cloudtrail:*:023670702506:trail/*"
      }
    }
  } ]
}
POLICY

  tags = {
    Name = "a9faa5d0-ca98-4a53-a498-b22800ab069a"
  }


}


resource "aws_kms_alias" "s3_sms_dump_bucket" {

  name          = "alias/s3-sms-dump-bucket"
  target_key_id = aws_kms_key.a9faa5d0-ca98-4a53-a498-b22800ab069a.key_id

}


resource "aws_kms_key" "mrk-c3b9f6a22c064d8ca4424340f99fb46a" {

  description             = "post-prod-rds-backup"
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
      "AWS" : "arn:aws:iam::023670702506:root"
    },
    "Action" : "kms:*",
    "Resource" : "*"
  } ]
}
POLICY

  tags = {
    Name = "mrk-c3b9f6a22c064d8ca4424340f99fb46a"
  }


}


resource "aws_kms_alias" "post_prod_rds_backup" {

  name          = "alias/post-prod-rds-backup"
  target_key_id = aws_kms_key.mrk-c3b9f6a22c064d8ca4424340f99fb46a.key_id

}