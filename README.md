poetryとdockerで機械学習の環境をサクッと作るexample

必要なもの

- dockerfile
- docker-compose.yml
- pyproject.toml(poetryのために)

torch-with-gpuの中のこれらのファイルを用意してdocker-compose up -dすれば8888 portにjupyterlabが立つ

ライブラリのインストールはjupyterの中でpoetry addしていけばいい

フォルダを丸ごとマウントいてるので、pyproject.tomlなどはpoetryコマンドで認識されつつ変更はシステムに残り、再ビルド時はこれらのファイルから作られる


todo:

tensorflow1系の環境が意外と面倒でまだできてないが、現状使ってないので後回し
