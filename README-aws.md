# AWS Copilot

Now Draft, Detail Comming Soon...

## 処理手順

1. IAMユーザーを作成，ポリシーを与えておく，アクセスキーを控えておく
2. AWS CLI，AWS Copilotをインストール
3. ECRにリポジトリをプッシュ
4. CopiLotを初期化・デプロイ

## Copilot CLI

| コマンド | 意味 | 出力サンプル | 
|:-------------|:-------------|:-------------|
| `copilot app ls` | Copilotサービス上のすべてのappのリストを表示 | [app_ls.txt](https://github.com/akh1r0ck/gradio_docker/blob/main/docs/aws/app_ls.txt) | 
| `copilot app show` | カレントディレクトリのappの詳細を表示 | [app_show.txt](https://github.com/akh1r0ck/gradio_docker/blob/main/docs/aws/app_show.txt) |
| `copilot svc ls` | カレントディレクトリのcopiloでローンチしているサービスの一覧を表示 | [svc_ls.txt](https://github.com/akh1r0ck/gradio_docker/blob/main/docs/aws/svc_ls.txt) |
| `copilot svc show` | サービスの詳細を表示 | [svc_show.txt](https://github.com/akh1r0ck/gradio_docker/blob/main/docs/aws/svc_show.txt) |
| `copilot svc stats [アプリ名]` | アプリの状況を表示 | [svc_stats_gradio.txt](https://github.com/akh1r0ck/gradio_docker/blob/main/docs/aws/svc_stats_gradio.txt) |



[参考文献](https://qiita.com/hideki/items/61e25b07901f1cdec679)
