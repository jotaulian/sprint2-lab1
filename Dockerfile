FROM python:3.12

WORKDIR /app

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

ENV FLASK_APP=app.py
ENV MYSQL_HOST='mysql'
ENV MYSQL_USER='root'
ENV MYSQL_PASSWORD='password'
ENV MYSQL_DB='my_db'

COPY ./app .

EXPOSE 5000

CMD [ "flask", "run", "--host", "0.0.0.0", "--port", "5000"]