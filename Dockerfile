# read the doc: https://huggingface.co/docs/hub/spaces-sdks-docker
# you will also find guides on how best to write your Dockerfile

FROM python:3.9

WORKDIR /work

COPY ./ /work

RUN pip install --no-cache-dir --upgrade -r /work/requirements.txt


CMD ["python", "app.py"]