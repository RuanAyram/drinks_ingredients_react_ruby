# README

Tutorial disponivel em: [Modern Web Stack—Rails 5 API + ActiveAdmin + Create React App on Heroku](https://blog.heroku.com/a-rock-solid-modern-web-stack)

### Stack

`ruby 2.5.1`

`rails 5.2.3`

```
database: pg
devise
activeadmin
```

### Steps

```
git clone git@github.com:RuanAyram/drinks_ingredients_react_ruby.git
cd drinks_ingredients_react_ruby
cd client
yarn install
cd ..
bundle install
rails db:migrate && rails db:seed

bin/rails start
```

#### API at: `http:localhost:3001` and `http:localhost:3001/admin`

#### React at: `http:localhost:3000`
