# gradio_docker

## 開発環境

| 環境 | バージョン |
|:-------------:|:-------------:|
| MacBook Pro (13-inch, M1, 2020) | |
| macOS Venture 13.1 | |
| docker | 23.0.1 |
| conda | 4.12.0 |
| python | 3.9.16 |
| gradio | 3.23.0 |


## 操作

### docker imageのビルド

```bash
docker build -t gradio_demo .
```

### docker containerを起動

1. docker containerを起動
    ```bash
    docker run --rm -it -p 80:80 gradio_demo
    ```

2. webアプリを起動  
    `http://0.0.0.0:80`

3. swaggerにアクセス  
    `http://0.0.0.0:80/docs`
※gradioのバックエンドがFastAPIなのでswaggerも使えるようです


### docker containerをbashで起動

```bash
docker run --rm -it gradio_demo bash
```
