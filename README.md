building the docker

```bash
docker build -t yanliang12/yan_flask_chatterbot:1.0.2 .
```

start the docker

```bash
docker run -it -p 0.0.0.0:3667:3667 yanliang12/yan_flask_chatterbot:1.0.2
```

visit the UI at

http://localhost:3667/


![](screencapture-localhost-5000-2021-11-05-18_28_27.png)

