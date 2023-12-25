# Argo CD HA without autoscaling terraform example

Deploy ArgoCD HA without autoscaling in Kubernetes cluster via terraform.

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
| <a name="module_argocd_ha_without_autoscalling"></a> [argocd\_ha\_without\_autoscalling](#module\_argocd\_ha\_without\_autoscalling) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

## Outputs

No outputs.
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
