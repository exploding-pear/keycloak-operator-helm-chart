chart_version=$(yq '.version' ../chart/Chart.yaml)
git tag ${chart_version}
git push --tags