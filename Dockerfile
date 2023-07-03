FROM python:3.11-slim AS base

ENV APP_HOME /app

WORKDIR $APP_HOME

COPY . .

RUN pip3 install --upgrade pip
RUN pip3 install -r requirements.txt

EXPOSE 5000

#тут проблема
ENTRYPOINT ["python", "botassistant/bot.py"]