To run the application, use the following command:

```uvicorn main:app --reload --port 5000 --reload```

or

```docker compose up```



to build and push image
```
docker build . -t ghcr.io/taletalesarb/simple-app-with-login
docker image push ghcr.io/taletalesarb/simple-app-with-login
```