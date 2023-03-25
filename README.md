<h1 align="center"> 🚀 Gradio Docker 🐋</h1>


<p align="center">
    <img src="https://custom-icon-badges.herokuapp.com/badge/license-CC0%201.0-8BB80A.svg?logo=law&logoColor=white">
    <img src="https://img.shields.io/github/last-commit/akh1r0ck/gradio_docker">
    <a href="https://exm3paufiq.us-east-2.awsapprunner.com/">
    <img src="https://img.shields.io/badge/AWS-App%20Runner-orange">
    </a>
</p>

<p align="center">
  <a href="https://github.com/akh1r0ck/gradio_docker/blob/master/README-aws.md">README for AWS App Runner</a>
</p>


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

### git clone

```bash
git clone https://github.com/akh1r0ck/gradio_docker.git
cd gradio_docker
```

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
    [http://0.0.0.0:80](http://0.0.0.0:80)

3. swaggerにアクセス  
    [http://0.0.0.0:80/docs](http://0.0.0.0:80/docs)  
    ※gradioのバックエンドがFastAPIなのでswaggerも使えるようです


### docker containerをbashで起動

```bash
docker run --rm -it gradio_demo bash
```

## 解説

### [gradio.Interface](https://www.gradio.app/docs/#interface)

```python
demo = gr.Interface(
    fn=greet,
    inputs="text",
    outputs="text"
    )
```

- キーワード引数:fn
  - 呼び出す関数を指定する引数
  - greet()という関数を呼び出している
- キーワード引数:inputs
  - fnで呼び出す関数に与える引数を指定する引数（ややこしい）
    - コンポーネント，コンポーネントを格納した変数を指定する
    - 今回のように"text"とエイリアスを指定することも可能
  - gradioの[Textboxコンポーネント](https://www.gradio.app/docs/#textbox)をエイリアスを使って指定

- キーワード引数:outputs
  - fnで呼び出した関数の戻り値を指定する引数（ややこしい）
    - コンポーネント，コンポーネントを格納した変数を指定する
    - 今回のように"text"とエイリアスを指定することも可能
  - gradioの[Textboxコンポーネント](https://www.gradio.app/docs/#textbox)をエイリアスを使って指定

### [gradio.Interfaec.launch](https://www.gradio.app/docs/#interface-launch)

```python
demo.launch(
    server_name="0.0.0.0",
    server_port=80
    )
```

- キーワード引数:server_name
  - サーバー名を指定する引数
  - <b>ローカルで使うなら "0.0.0.0"にセットするんやで</b>と[launch()の公式ドキュメント](https://www.gradio.app/docs/#interface-launch-header)に書いてあったのでそれを採用

- キーワード引数:server_port
  - ポート番号を指定する引数  
  - お約束の80番ポートを指定
