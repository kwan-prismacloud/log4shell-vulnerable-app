# BUILD ONLY

resource "prismacloud_policy" "build_rule_1" {
  name        = "Kathy's sample custom build policy created with terraform"
  policy_type = "config"
  cloud_type  = "aws"
  severity    = "high"
  labels      = ["some_tag"]
  description = "this is a guideline"
  rule {
    name = "Kathy's sample custom build policy created with terraform"
    rule_type = "Config"
    parameters = {
      savedSearch = false
      withIac     = true
    }
    children {
      type           = "build"
      recommendation = "fix it"
      metadata = {
        "code" : file("./build_policy.yaml"),
      }
    }
  }
} 