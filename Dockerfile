FROM python:3.10.6-buster

COPY requirements.txt requirements.txt
RUN pip install --upgrade pip
RUN pip install --no-cache-dir -r requirements.txt

COPY google_ai4_code_script google_ai4_code_script
COPY setup.py setup.py
RUN pip install .

COPY models models

CMD uvicorn google_ai4_code_script.api.fast:app --host 0.0.0.0 --port 8080
