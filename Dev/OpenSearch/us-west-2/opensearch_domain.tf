resource "aws_opensearch_domain" "main" {

  domain_name = "int-nam-poc-es-clst"
  engine_version = "Elasticsearch_7.10"

  cluster_config {
    instance_type  = "t3.medium.search"
    instance_count = 2
  }

  ebs_options {
    ebs_enabled = true
    volume_size = 10
    volume_type = "gp2"
  }

  vpc_options {
    subnet_ids         = ["subnet-04a9eb5fa9c0c7753"]
    security_group_ids = ["sg-0d347b6aa2ca0d70d"]
  }

  encryption_at_rest {
    enabled = true
  }

  node_to_node_encryption {
    enabled = true
  }

  domain_endpoint_options {
    enforce_https = true
    tls_security_policy = "Policy-Min-TLS-1-0-2019-07"
  }

  access_policies = <<POLICY
{"Version":"2012-10-17","Statement":[{"Effect":"Allow","Principal":{"AWS":"*"},"Action":"es:*","Resource":"arn:aws:es:us-west-2:023670702506:domain/int-nam-poc-es-clst/*"}]}
POLICY

}