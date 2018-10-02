# Deployment

- Provisionin を抽象化し、宣言的に定義できるようにする
- この層は immutable なリソースを扱う

## immutable であるということは

- 宣言的に定義する
- よってインターフェイスは ARD
  - Apply, Read, Delete
