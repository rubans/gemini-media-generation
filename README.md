# Gemini Media Generation Extension

This project implements a Gemini CLI Extension (using the Model Context Protocol) that enables AI assistants to generate media using Google Cloud Vertex AI models.

## Purpose

The extension exposes tools that allow the Gemini CLI to generate high-quality images and videos directly from text prompts or input images. It acts as a bridge between the CLI and Google's generative AI models on Vertex AI.

## Tools

### `nanobanana_generate`
Generates images based on a text prompt.
- **Backend**: Vertex AI (default model: `gemini-2.5-flash-image`).
- **Features**: Supports text-to-image and image-to-image generation.

### `veo_generate_video`
Generates videos based on a text prompt.
- **Backend**: Vertex AI (default model: `veo-3.1-fast-generate-preview`).
- **Features**: Supports text-to-video and image-to-video generation.

## Configuration

The extension requires access to a Google Cloud project with Vertex AI enabled.

Create a `.env` file in the project root with the following variables:

```env
VERTEXAI_PROJECT=your-google-cloud-project-id
VERTEXAI_LOCATION=us-central1
# Optional Logging Configuration
LOG_LEVEL=INFO
LOG_FILE=gemini_media_gen.log
```

## Running the Server

Install dependencies:
```bash
pip install fastmcp google-genai python-dotenv
```

Run the server:
```bash
python mcp/servers/gemini_media_gen.py
```