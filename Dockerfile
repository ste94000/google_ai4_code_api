FROM python:3.10.6-buster

COPY requirements.txt requirements.txt
<<<<<<< HEAD
RUN pip install --no-cache-dir -r requirements.txt
=======
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
>>>>>>> cb16fca4fee0c162b9646d30c84c1f9e39de50d3

COPY google_ai4_code_script google_ai4_code_script
COPY setup.py setup.py
RUN pip install .

COPY models models

<<<<<<< HEAD
CMD uvicorn google_ai4_code_script.api.fast:app --host 0.0.0.0 --port 8080
=======
EXPOSE 8080

CMD ["sh", "-c", "uvicorn google_ai4_code_script.api.fast:app --host 0.0.0.0 --port ${PORT:-8080}"]
>>>>>>> cb16fca4fee0c162b9646d30c84c1f9e39de50d3
