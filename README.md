# circle-ci-multi-arch

Simple hello world example, which shows how to build a multi-arch image by building each architecture natively and then combining them together at the end when pushing them to the Docker repository.

One way to build multi-arch images is with buildx, but this is slower due to the requirement to use QEMU emulation to emulate the other architectures being built. Instead of using emulation, each architecture is built on its own native runner. Once the images are built, they're stored as CircleCI artifacts and reloaded in a final job, which loads the images into the docker context and then uses buildx to push them to the repository.


