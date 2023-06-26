
### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
export PATH="/Users/mbowen/.rd/bin:$PATH"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)

### Rancher Desktop Proxy Setup
rancher-proxy() {
  cp "$HOME/Library/Application Support/rancher-desktop/lima/_config/override-proxy.yaml" "$HOME/Library/Application Support/rancher-desktop/lima/_config/override.yaml"
  export RD_STATUS="On Proxy"
  echo $RD_STATUS
}
rancher-no-proxy() {
  cp "$HOME/Library/Application Support/rancher-desktop/lima/_config/override-no-proxy.yaml" "$HOME/Library/Application Support/rancher-desktop/lima/_config/override.yaml"
  export RD_STATUS="Off Proxy"
  echo $RD_STATUS
}
rd-proxy-status() {
  echo $RD_STATUS
}