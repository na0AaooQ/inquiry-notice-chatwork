# README

* Overview

Ruby on Rails 5 で作成した問い合わせフォーム(問い合わせ内容をメールで送信 + ChatWorkで通知する)のサンプルプログラムです。

* Ruby version

Amazon EC(Amazon Linux)の以下のバージョンで動作する事を確認しています。

```
$ cat /etc/system-release
Amazon Linux AMI release 2016.09
```

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

使い方は以下の通りです。

```
# groupadd rails
# useradd rails -g rails -d /home/rails -s /bin/bash
```

```
# echo "rails ALL=(ALL) NOPASSWD:ALL" > /etc/sudoers.d/rails
# chown root:root /etc/sudoers.d/rails
# chmod 644 /etc/sudoers.d/rails
```

```
# su - rails
```

```
$ git clone https://github.com/na0AaooQ/inquiry-notice-chatwork.git
```

```
$ grep "to:" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
  default to: "********************@gmail.com"
```

問い合わせ内容を送信するメールアドレスを指定します。
例として、問い合わせ内容を example@example.com 宛にメールで送信したい場合、以下のコマンドを実行します。

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

```
$ pwd
/home/rails/inquiry-notice-chatwork
```

```
$ sudo -E /usr/local/rbenv/shims/rails server -d -b 0.0.0.0 --port=80
```

詳細は以下をご参照下さい。

http://qiita.com/na0AaooQ/items/19d9fb4bfd22dba3e55f
