resource "google_compute_instance_iam_policy" "compute_instance_iam_policies" {
  for_each = var.compute_instance_iam_policies

  instance_name = each.value.instance_name
  policy_data   = each.value.policy_data
  project       = each.value.project
  zone          = each.value.zone
}

