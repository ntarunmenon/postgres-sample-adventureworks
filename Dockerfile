
FROM postgres
RUN apt-get update && apt-get install -y unzip
RUN unzip /data/data.zip