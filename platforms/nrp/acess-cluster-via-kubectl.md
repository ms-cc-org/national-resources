# Cluster Access via kubectl
Please do not skip any steps. All steps below are necessary to be able to connect to Nautilus. For detailed information and troubleshooting visit nautilus official documentation on [accessing cluster via kubectl](https://nrp.ai/documentation/userdocs/start/getting-started/#cluster-access-via-kubectl)
## 1. Install kubectl
- Install the Kubernetes command-line tool, kubectl from the [official instructions](https://kubernetes.io/docs/tasks/tools/) of each OS.
## 2. Install kubelogin
- You must [install the kubelogin](https://github.com/int128/kubelogin?tab=readme-ov-file#setup) plugin, or your kubeconfig file will not work.
- Once installed, move kubelogin from `/usr/local/bin` to `~/.local/bin` (create the directory when nonexistent) if it does not exist on `~/.local/bin`. Set `export PATH="~/.local/bin:${PATH}"` for local user
```
sudo mv ./kubelogin /usr/local/bin/kubectl-oidc_login
sudo chown root: /usr/local/bin/kubectl-oidc_login
```

## 3. Create config file
- Save the [config file](https://nrp.ai/config) as config (without any extension) and put it in your $HOME/.kube folder.
- This folder may not exist on your machine. Create the .kube folder first on your home folder.

## 4. Use correct config file
- Run the following command to list available Kubernetes contexts:
```
$ kubectl config get-contexts
CURRENT   NAME       CLUSTER    AUTHINFO   NAMESPACE
*         nautilus   nautilus   oidc

```
- If you have access to multiple Kubernetes clusters, you need to choose use-context nautilus by doing
```
kubectl config use-context nautilus
```

## 5. Verify cluster access
- Verify cluster access using kubectl. Run the following command on your terminal.
```
kubectl get pods -n <YOUR_NAMESPACE>
```


If you see the message “No resources found in your namespace” it means there are no pods in your namespace yet. This indicates that you have access to the resources of your namespace.

## 6. Set default namespace
If you know you’re a member of a namespace, you can set it as default.
```
kubectl config set contexts.nautilus.namespace <YOUR_NAMESPACE>
```


