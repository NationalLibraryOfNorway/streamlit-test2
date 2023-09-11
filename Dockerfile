FROM python:3.11-slim

ENV PYTHONUNBUFFERED True

ENV APP_HOME /app
ENV _SERVICE_NAME /streamlittest
ENV PORT 8501

WORKDIR ${APP_HOME}


COPY . .

RUN pip install -r requirements.txt

CMD streamlit run app.py --server.port $PORT --server.baseUrlPath {${_SERVICE_NAME}}
