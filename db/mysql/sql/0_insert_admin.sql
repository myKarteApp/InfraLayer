-- INSERT文の例
-- aminでログイン後にパスワードを変更する
INSERT INTO AuthInfo (authId, email, password, authType, authRole, isTrial, isDeleted, createdAt, updatedAt)
VALUES (UUID(), '123windam@gmail.com', 'password', 'default', 1, false, false, NOW(), NOW());
