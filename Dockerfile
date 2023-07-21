FROM python

WORKDIR /app

RUN pip install gunicorn

COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

CMD bash run.sh

#либо: 
#CMD python manage.py migrate && python manage.py runserver 0.0.0.0:8000
