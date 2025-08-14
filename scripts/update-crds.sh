echo "grabbing version number"
version=$(yq '.appVersion' ../chart/Chart.yaml)
echo "got version: $version"

echo "grabbing new crds"
curl -o ../chart/crds/keycloaks.k8s.keycloak.org-v1.yml  https://raw.githubusercontent.com/keycloak/keycloak-k8s-resources/${version}/kubernetes/keycloaks.k8s.keycloak.org-v1.yml
curl -o ../chart/crds/keycloakrealmimports.k8s.keycloak.org-v1.yml https://raw.githubusercontent.com/keycloak/keycloak-k8s-resources/${version}/kubernetes/keycloakrealmimports.k8s.keycloak.org-v1.yml