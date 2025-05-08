# provenance-metadata

To generate provenance file:

```
docker buildx create --use --driver-opt image=moby/buildkit:latest --name mybuilder

BUILDX_METADATA_PROVENANCE=max docker buildx build  --builder mybuilder --metadata-file metadata.json --output type=docker --platform=linux/arm64 --tag provenanceimage:0.0.1 . 
```