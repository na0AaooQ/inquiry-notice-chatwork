# README

* Overview

Ruby on Rails 5 で作成した問い合わせフォーム(問い合わせ内容をメールで送信 + ChatWorkで通知する)のサンプルプログラムです。

* Ruby version

以下の環境で動作します。

```
$ ruby -v
ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]
```

```
$ rails -v
Rails 5.0.2
```

* System dependencies

http://qiita.com/na0AaooQ/items/19d9fb4bfd22dba3e55f

* Configuration

http://qiita.com/na0AaooQ/items/19d9fb4bfd22dba3e55f

* Database creation

Not Used Database

* How to Use

```
$ git clone https://github.com/na0AaooQ/inquiry-notice-chatwork.git
```

```
$ grep "to:" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
  default to: "********************@gmail.com"
```

問い合わせ内容を送信するメールアドレスを指定します。
例として、問い合わせ内容を example@example.com としたい場合、以下のコマンドを実行します。

```
$ sed -i -e "s/\**@gmail.com/example@example.com/g" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
```

```
$ grep "to:" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
  default to: "example@example.com"
```

```
$ cd inquiry-notice-chatwork
$ bundle install
```

詳細は以下をご参照下さい。

http://qiita.com/na0AaooQ/items/19d9fb4bfd22dba3e55f


