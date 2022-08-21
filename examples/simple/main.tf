module "argocd" {
  source = "../../"
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
