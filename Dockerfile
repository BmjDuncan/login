FROM python:3.9
RUN pip install --upgrade pip
COPY requirements.txt /home/
COPY *.py /home/
WORKDIR /home
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["db.py"]
EXPOSE 3306
