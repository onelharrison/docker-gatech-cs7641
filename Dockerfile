FROM python:3.10

WORKDIR /workspace

COPY requirements.txt ./

RUN pip install -r requirements.txt

EXPOSE 9000

CMD ["jupyter", "lab", "--allow-root", "--no-browser", "--port=9000", "--ip=0.0.0.0"]