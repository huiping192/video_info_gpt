
# Video Info GPT
## Introduction
Video Info GPT is a specialized tool that utilizes a language model (LLM) to analyze and summarize metadata of video files. Integrating FFmpeg, this project focuses on extracting key information such as video size, encoding details, and other technical metadata, providing a streamlined overview of video file characteristics.

## Features
- Analyzes video file metadata using advanced language models.
- Utilizes FFmpeg for extracting detailed video file information.
-Streamlines the process of obtaining technical details like video size, encoding format, and more.

## Quick Start
### Prerequisites
- Docker
- Python 3.9
- An OpenAI API key
## Setting Up
### 1. Clone the repository:

```
git clone https://github.com/huiping192/video_info_gpt.git
cd video_info_gpt
```
### 2. Create an .env file:

In the root directory of the project, create a file named .env and add your OpenAI API key:

```
OPENAI_API_KEY=your_openai_api_key_here
```
Replace your_openai_api_key_here with your actual OpenAI API key.

### 3. Build and run the Docker container:

```
docker-compose up --build
```
## Usage
Once the setup is complete, use the Streamlit web interface to input video files. The application will use FFmpeg to extract metadata and the LLM to analyze and present this information in an easily understandable format.

# Contributing
I welcome contributions to the Video Info GPT project. If you have ideas for improvement or want to help enhance the tool, please feel free to contribute.

# License
This project is licensed under the MIT License. For more information, please refer to the LICENSE file.

