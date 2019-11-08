# Crypto Currency Search App

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

```Ruby
Ruby ~> 2.5.7, >= 2.5.5
```
* System dependencies
```
Rails, ~> 5.1.7
Devise, >= 4.7.1
```
```Bootstrap
Bootstrap-sass, >= 3.4.1
```

* Configuration
Used the CoinMarketCap API
```
RESTful JSON endpoints

https://api.coinmarketcap.com/v1/ticker/
```

* Database creation
```Ruby
 sqlite3, < 1.4 for Develoment and Test
 ```

 ```Ruby
 PostgreSQL for Production
 ```
## Deployment instructions
 > Check Heroku documentation:
  * [Managing Your Heroku Account](https://devcenter.heroku.com/articles/heroku-cli#download-and-install "Download and The Heroku CLI")

  * [Managing Your Heroku SSH Keys](https://devcenter.heroku.com/articles/keys "Managing Your Heroku SSH Keys") 
  
 > After Heroku login and SSH keys setup:
  
   1. Type `heroku create` in command line
   2. Check if remote has been created type `git remote -v`
   3. Rename remotes name `git remote rename ('new name')`
   4. Ensure all code commits are staged and pushed to master `git add .`and, `git commit -m "comments"` then `git push`
   5. Type `git push heroku master`
   6. Migrate your database by running `heroku run rake db:migrate`


