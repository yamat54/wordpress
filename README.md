# WordPress

## コンテナ起動
```bash
$ docker compose up -d
```

## メール受信
1. 下記定数のコードを `wp-config.php` に追加する
```php
// /* That's all, stop editing! Happy publishing. */ の後に追記してください。

define( 'WPMS_ON', true );
define( 'WPMS_SMTP_HOST', 'mailhog' );
define( 'WPMS_SMTP_PORT', 1025 );
define( 'WPMS_SSL', '' );
define( 'WPMS_SMTP_AUTH', false );
define( 'WPMS_SMTP_AUTOTLS', false );
define( 'WPMS_MAILER', 'smtp' );
```
2. http://localhost:8025/ にアクセスする
