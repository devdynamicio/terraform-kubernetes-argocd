module "argocd" {
  source             = "../../"
  helm_chart_version = "5.51.6"
  values = yamlencode({
    "global" : {
      "image" : {
        "imagePullPolicy" : "Always"
      }
    }
  })
}

provider "helm" {
  kubernetes {
    config_path = "~/.kube/config"
  }
}
