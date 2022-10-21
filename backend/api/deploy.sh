#! /bin/zsh

# docker build & push Container Registry
docker build -t hobbysma . 
docker tag hobbysma gcr.io/jphacks-techuni-backend/hobbysma 
docker push gcr.io/jphacks-techuni-backend/hobbysma

gcloud run deploy --image=gcr.io/jphacks-techuni-backend/hobbysma:latest --cpu 2 --memory 4Gi
