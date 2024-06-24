#!/bin/bash

# .env ファイルのパス
env_file=".env"

# .env ファイルの存在を確認
if [ ! -f "$env_file" ]; then
  echo "$env_file が見つかりません"
  exit 1
fi

# envsubst の引数を格納する変数
envsubst_args=""

# .env ファイルを読み込んで、各行の変数を export する
while IFS= read -r line; do
  export "$line"
  # envsubst の引数を追加
  envsubst_args+="\$\$${line%%=*} "  # 変数名のみを追加
done < "$env_file"

# envsubst を実行
echo "envsubst を実行します。"
echo "envsubst の引数：$envsubst_args"

envsubst "$envsubst_args" < my_proxy_nginx.conf.template > my_proxy_nginx.conf
chmod 744 my_proxy_nginx.conf
echo "テンプレートの置換が完了しました。"
