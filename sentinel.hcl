module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfrun-functions" {
  source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}
module "aws-functions" {
  source = "./aws/aws-functions/aws-functions.sentinel"
}
module "tfconfig-functions" {
  source = "./common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "limit-costs"{
   source = "./cloud-agnostic/limit-proposed-monthly-cost.sentinel"
   enforcement_level = "soft-mandatory"
}

policy "enforce-mandatory-tags"{
    source = "./aws/enforce-mandatory-tags.sentinel"
    enforcement_level = "hard-mandatory"
}