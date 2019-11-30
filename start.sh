eksctl create cluster eks-kubeflow \
    --node-type=m5.xlarge \
    --nodes=2 \
    --node-volume-size=120 \
    --timeout=40m \
    --region=ap-southeast-1

EKSCTL_EXPERIMENTAL=true eksctl \
    enable repo \
    --git-url=git@github.com:chanwit/eks-profile-demo \
    --git-email=flux@users.noreply.github.com \
    --cluster=eks-kubeflow \
    --region=ap-southeast-1

EKSCTL_EXPERIMENTAL=true eksctl \
    enable profile \
    --git-url=git@github.com:chanwit/eks-profile-demo \
    --git-email=flux@users.noreply.github.com \
    --cluster=eks-kubeflow \
    --region=ap-southeast-1 \
    git@github.com:weaveworks/mlops-profile
