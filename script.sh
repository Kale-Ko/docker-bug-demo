docker buildx build bases/debian/bookworm/ --pull --tag docker.io/kaleko/debian:bookworm --tag docker.io/kaleko/debian:latest --no-cache --progress=plain
docker buildx build bases/java8/debian/ --tag docker.io/kaleko/java8:debian --no-cache --progress=plain
docker buildx build bases/java21/debian/ --tag docker.io/kaleko/java21:debian --no-cache --progress=plain