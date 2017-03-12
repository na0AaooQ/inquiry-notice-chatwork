# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

Rails 5.0.2

ruby 2.4.0p0 (2016-12-24 revision 57164) [x86_64-linux]

* System dependencies

Ruby on Rails 5 で作成した問い合わせフォーム(問い合わせ内容をメールで送信 + ChatWorkで通知する)のサンプルプログラムです。

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

```
$ sed -i -e "s/\**@gmail.com/example@example.com/g" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
```

```
$ grep "to:" inquiry-notice-chatwork/app/mailers/inquiry_mailer.rb 
  default to: "example@example.com"
```
