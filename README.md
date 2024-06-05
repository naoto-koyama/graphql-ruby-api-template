# 利用用途

本リポジトリをforkしていつも行う初期設定を省略できます

# 環境

- ruby 3.3.1
- Rails 7.1.3.3
- Rspec(FactoryBot, Faker, ShouldaMatchers)
- Rubocop
- Docker
- PostgresSQL 16.3(Docker Compose)
- GraphQL
- husky(lint-staged)

# 使い方
## forkする場合

- このリポジトリをfork
- forkしたリポジトリをローカルにクローン
```bash
git clone
```
- リモートリポジトリを設定
```bash
git add .
git commit -m "Initial commit"
git push origin main
```

- 共通設定へ進む

## forkしない場合

forkした形跡を残したくない場合は以下の手順で進める

1. このリポジトリをクローン
```bash
git clone https://github.com/naoto-koyama/graphql-ruby-api-template.git
```

- リモートリポジトリを削除
```bash
git remote remove origin
```

- 新しいリポジトリを作成
```bash
git remote add origin <新しいリポジトリのURL>
```

- リモートリポジトリへpush
```bash
git push -u origin main
```

- 共通設定へ進む

## 共有設定

- Database.ymlのdatabaseの設定を変更
```ruby
  database: <%= ENV['DB_NAME'] || 'graphql_ruby_api_template_development' %> # ここを変更(test, productionも同様)
```

- package.jsonのnameを変更
```json
  "name": "<新しいリポジトリの名前>"
```

## 必要に応じて設定の変更
- rubyのバージョン
  - .ruby-version
  - Gemfile
- Railsのバージョン
  - Gemfile
- Rubocopの設定
  - .rubocop.yml
- Dockerのバージョン
- PostgresSQLのバージョン
  - Dockerfile.db
- その他必要なgem
- yarnおよびnodeのバージョン
  - package.json

# 立ち上げ方法
## 共通
- huskyの設定
```bash
yarn install
```

## Dockerを使う場合

- Dockerコンテナをビルド
```bash
docker-compose build
```

- Dockerコンテナを立ち上げ
```bash
docker-compose up -d
```

- Databaseの作成
```bash
docker-compose run web rails db:create
```

- Databaseのマイグレーション
```bash
docker-compose run web rails db:migrate
```

## Dockerを使わない場合

- 環境変数の設定
  - .env.development.sampleをコピーして.env.developmentを作成
```bash
cp .env.development.sample .env.development
```

- bundle install
```bash
bundle install
```

- Databaseの立ち上げ
```bash
docker-compose up -d db
```

- Databaseの作成
```bash
rails db:create
```

- Databaseのマイグレーション
```bash
rails db:migrate
```
