# ansible-cli-container

The intent of this repository is to create an easy to use  container to learn how to deal with the new ansible tools

# Howto

Clone this repository and cd into it

Create the container:

```
$ podman build -t ansible-cli:latest .
```

Run the container
```
$ podman run -tid --name ans-cli --security-opt label=disable --device /dev/fuse -v my_local_dir:/home/podman/ansible:Z ansible-cli:latest 
$ podman exec -it ans-cli /bin/bash
```

> **_NOTE:_** if you don't have `podman`, you can replace `podman` by `docker`
