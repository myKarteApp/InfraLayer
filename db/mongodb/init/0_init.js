// ユーザーの作成
db.createUser({
    user: '${MONGO_INITDB_ROOT_USERNAME}',
    pwd: '${MONGO_INITDB_ROOT_PASSWORD}',
    roles: [
      { role: 'root', db: 'admin' }
    ]
});
// TODO: タイムゾーンは、環境変数のTZを指定する