FROM python:3

COPY /../build/docker/scripts/ /scripts/

WORKDIR /scripts
RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 5500

CMD [ "python", "./app.py" ]