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
git clone https://github.com/naoto-koyama/graphql-ruby-backend.git
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

- graphql_ruby_backend_schema.rbの名前を変更
```bash
mv graphql_ruby_backend_schema.rb <新しいリポジトリの名前>_schema.rb
```

- Database.ymlのdatabaseの設定を変更
```ruby
  database: <%= ENV['DB_NAME'] || 'graphql_ruby_backend_development' %> # ここを変更(test, productionも同様)
```

- bundle install
```bash
bundle install
```

- DB作成
```bash
rails db:create
```

- DBマイグレーション
```bash
rails db:migrate
```

- テスト実行
```bash
bundle exec rspec
```

- サーバー起動
```bash
rails s
```

- ブラウザでlocalhost:3000/graphqlにアクセス
- GraphQLのクエリを実行
- テストが通っていれば完了

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
