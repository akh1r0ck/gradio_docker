FROM python:3.9

WORKDIR /work

COPY ./ /work

RUN pip install --no-cache-dir --upgrade -r /work/requirements.txt

CMD ["python", "app.py"]