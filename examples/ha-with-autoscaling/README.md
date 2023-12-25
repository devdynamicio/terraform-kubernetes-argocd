# Argo CD HA with autoscaling terraform example

Deploy ArgoCD HA with autoscaling in Kubernetes cluster via terraform.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Warning: You need at least 3 worker nodes as the HA mode of redis enforces Pods to run on separate nodes.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.0 |
| <a name="requirement_helm"></a> [helm](#requirement\_helm) | >= 2.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_argocd_ha_with_autoscalling"></a> [argocd\_ha\_with\_autoscalling](#module\_argocd\_ha\_with\_autoscalling) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
