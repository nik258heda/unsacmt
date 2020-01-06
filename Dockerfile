FROM pytorch/pytorch:latest

WORKDIR /app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN PYTHONIOENCODING=utf-8 python -m laserembeddings download-models

CMD ["bash"]
