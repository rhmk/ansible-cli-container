# stable/Dockerfile
#
# Build a Podman container image from the latest
# stable version of Podman on the Fedoras Updates System.
# https://bodhi.fedoraproject.org/updates/?search=podman
# This image can be used to create a secured container
# that runs safely with privileges within the container.
#
FROM quay.io/podman/stable

RUN dnf install -y python3-pip python3-paramiko man-db less 
RUN python3 -m pip install ansible ansible-navigator
RUN mkdir /home/podman/ansible
