export HELM_EXPERIMENTAL_OCI=1
aws ecr get-login-password --region us-east-1 | helm registry login --username AWS --password-stdin 709825985650.dkr.ecr.us-east-1.amazonaws.com

CHART_VERSION=v1.11.2-01-aws
helm package aws
helm push kyverno-chart-${CHART_VERSION}.tgz oci://709825985650.dkr.ecr.us-east-1.amazonaws.com/nirmata/
