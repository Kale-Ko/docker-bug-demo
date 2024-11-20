### Notes

- The RUN output file name does not matter
- The url search params don't seem to matter (`https://api.adoptium.net/v3/assets/latest/8/hotspot` and `https://api.adoptium.net/v3/assets/latest/8/hotspot?test=true` both trigger the bug)
- It does not work if they are in the same Dockerfile
- There can be others instructions or builds in between as long as `docker buildx prune --all` is not run
