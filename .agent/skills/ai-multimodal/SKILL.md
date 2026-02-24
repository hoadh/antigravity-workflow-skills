---
name: ai-multimodal
description: Process and generate multimedia content using Google Gemini API. Capabilities include analyzing audio (transcription, summarization, up to 9.5 hours), understanding images (captioning, OCR, object detection, visual Q&A), processing videos (scene detection, temporal analysis, up to 6 hours), extracting from documents (PDF tables, forms, charts), generating images (Imagen 4), and generating videos (Veo 3). Use when working with audio/video files, analyzing images or screenshots, processing PDF documents, creating images/videos from text prompts.
---

# AI Multimodal

Process audio, images, videos, documents, and generate images/videos using Google Gemini's multimodal API.

## Setup

```bash
export GEMINI_API_KEY="your-key"  # Get from https://aistudio.google.com/apikey
pip install google-genai python-dotenv pillow
```

## Quick Start

**Verify setup**: `python scripts/check_setup.py`
**Analyze media**: `python scripts/gemini_batch_process.py --files <file> --task <analyze|transcribe|extract>`
**Generate content**: `python scripts/gemini_batch_process.py --task <generate|generate-video> --prompt "description"`

## Models

- **Image generation**: `imagen-4.0-generate-001` (standard), `imagen-4.0-ultra-generate-001` (quality)
- **Video generation**: `veo-3.1-generate-preview` (8s clips with audio)
- **Analysis**: `gemini-2.5-flash` (recommended), `gemini-2.5-pro` (advanced)

## Scripts

- **`gemini_batch_process.py`**: CLI for transcribe, analyze, extract, generate, generate-video
- **`media_optimizer.py`**: Compress/resize/convert media for Gemini limits
- **`document_converter.py`**: Convert PDFs/images/Office docs to markdown
- **`check_setup.py`**: Verify environment readiness

## Limits

**Formats**: Audio (WAV/MP3/AAC, 9.5h), Images (PNG/JPEG/WEBP), Video (MP4/MOV, 6h), PDF (1k pages)
**Size**: 20MB inline, 2GB File API

## References

| Topic | File |
|-------|------|
| Audio | `references/audio-processing.md` |
| Images | `references/vision-understanding.md` |
| Image Gen | `references/image-generation.md` |
| Video | `references/video-analysis.md` |
| Video Gen | `references/video-generation.md` |
