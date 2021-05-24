FROM python:3.9.5-slim


# 変数定義
ARG workspace_dir=/workspace/

RUN mkdir $workspace_dir
ADD workspace/requirements.txt $workspace_dir
WORKDIR $workspace_dir

# ライブラリのインストール
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
