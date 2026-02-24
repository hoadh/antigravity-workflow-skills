---
name: media-processing
description: Process multimedia files with FFmpeg (video/audio encoding, conversion, streaming, filtering), ImageMagick (image manipulation, format conversion, batch processing), and RMBG (AI-powered background removal). Use when converting media formats, resizing/cropping images, removing backgrounds, extracting audio, applying filters, optimizing file sizes, or creating streaming manifests.
---

# Media Processing

Process video, audio, and images using FFmpeg, ImageMagick, and RMBG.

## Tool Selection

| Task | Tool |
|------|------|
| Video encoding/conversion | FFmpeg |
| Audio extraction/conversion | FFmpeg |
| Image resize/effects | ImageMagick |
| Background removal | RMBG |
| Batch images | ImageMagick |
| Video thumbnails | FFmpeg |

## Essential Commands

```bash
# Video: Convert
ffmpeg -i input.mkv -c:v libx264 -crf 22 -c:a aac output.mp4

# Image: Resize
magick input.jpg -resize 800x600 output.jpg

# Background removal
rmbg input.jpg -m briaai -o output.png
```

## References

- `references/ffmpeg-encoding.md` - Codecs, quality, hardware acceleration
- `references/ffmpeg-filters.md` - Filters, complex filtergraphs
- `references/imagemagick-editing.md` - Effects, transformations
- `references/rmbg-background-removal.md` - AI models, CLI usage
- `references/common-workflows.md` - Video optimization, responsive images
