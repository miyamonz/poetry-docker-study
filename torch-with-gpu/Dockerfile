FROM pytorch/pytorch

ENV PYTHONUNBUFFERED=1 \
    PYTHONUTF8=1

WORKDIR /workspace

COPY pyproject.toml poetry.* ./

RUN apt-get update \
# container内で使いたいツールを適宜入れる
    && apt-get install --no-install-recommends -y curl git build-essential \
    && pip install -U pip poetry \
    # containerなので仮想環境を作る必要がない
    && poetry config virtualenvs.create false \
    && poetry install --no-interaction  --no-ansi

CMD poetry run jupyter lab --no-browser --port=8888 --ip=0.0.0.0 --allow-root --NotebookApp.token=''
