module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfrun-functions" {
  source = "./common-functions/tfrun-functions/tfrun-functions.sentinel"
}

policy "restrict-aws-instance-type"{
   source = "./cloud-agnostic/limit-proposed-monthly-cost.sentinel"
   enforcement_level = "soft-mandatory"
}

policy "enforce-mandatory-tags"{
    source = "./cloud-agnostic/enforce-mandatory-tags.sentinel"
    enforcement_level = "hard-mandatory"
}