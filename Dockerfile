# 使用官方 Python 运行时作为父镜像
FROM python:3.9

# 设置工作目录为 /app
WORKDIR /app

# 将当前目录内容复制到位于 /app 的容器中
COPY . /app

# 安装 FFmpeg
RUN apt-get update && \
    apt-get install -y ffmpeg && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# 安装 requirements.txt 中指定的任何所需包
RUN pip install --no-cache-dir -r requirements.txt

# 创建 Streamlit 配置目录
RUN mkdir -p /root/.streamlit

# 使用环境变量设置 Streamlit 邮箱配置
ARG STREAMLIT_EMAIL
RUN bash -c 'echo -e "\
[general]\n\
email = \"${STREAMLIT_EMAIL}\"\n\
" > /root/.streamlit/credentials.toml'

# Streamlit 使用的端口
EXPOSE 8501

# 运行 Streamlit 应用
CMD ["streamlit", "run", "main.py"]
