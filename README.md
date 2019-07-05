# docker nginx

## build
```bash
docker build -t beyondspider/nginx:latest .
```

## start
```bash
docker run -u root -d \
    -p 10122:22 -p 10180:80 \
    --name nginx \
    -v ~/.docker/download_home:/var/download_home \
    beyondspider/nginx:latest
```

## ssh
```bash
ssh root@127.0.0.1 -p 10122
```

## push
```bash
docker push beyondspider/nginx:latest
```
