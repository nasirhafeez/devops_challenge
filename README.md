This repo uses a Vagrantfile to create a VM. Then it uses the scripts given in `provisioners` folder to setup K3S in the VM and deploy 2 containers: an alpine Linux container hosting our flask application and a MySQL container hosting the database required for the application. Kubernetes manifests are given in the `manifests` folder, they are used to create a service and a deployment.

The `my_share` folder is a shared folder between the host and Vagrant VM, and it is also mounted as a volume on the container running our application. It contains the code of our Flask application in `hello.py` file. The script `startup.sh` is executed in our Alpine Linux container once it is initialized to install the required packages into it.

To boot this setup enter the `vagrant up` command. It will create an Ubuntu VM, create a Kubernetes cluster in it and deploy our containers. After doing this, our application will be accessible locally on `http://127.0.0.1:3000`. After making any change in the `hello.py` file on the host machine simply refresh the browser, the changes should be visible instantly.

References:

[Vagrant](https://www.linkedin.com/learning/learning-vagrant/)

[Vagrant and K3S](https://levelup.gitconnected.com/local-kubernetes-development-using-vagrant-and-k3s-547bd5687a7f)