module "tfplan-functions" {
  source = "./common-functions/tfplan-functions/tfplan-functions.sentinel"
}

policy "restrict-aws-instance-type"{
   source = "./cloud-agnostic/limit-proposed-monthly-cost.sentinel"
   enforcement_level = "advisory"
}
