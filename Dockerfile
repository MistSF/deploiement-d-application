FROM python:3
RUN pip install fastapi &&\
    pip install uvicorn &&\
    pip install python-multipart
COPY . /app
CMD cd app && uvicorn app:app --host 0.0.0.0