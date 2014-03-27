## Deploy to Heroku

Follow these steps to create a new local rails app and deploy it to Heroku.

### 1. Clone App
```
git clone git@github.com:GAFuller/rails-landing-page.git YourAppName
```

### 2. Change Name of Application
Change the application name from ```landingpage``` to whatever you want in the following files:
```
config/environments/development.rb
config/environments/production.rb
config/environments/test.rb
config/initializers/secret_token.rb
config/initializers/session_store.rb
config/application.rb
config/database.yml
config/environment.rb
config/routes.rb
Rakefile
```

### 2. Setup Development Environment
run:
```
bundle install
rake db:setup
```

### 3. Git Init
```
git remote rm origin
git remote add origin git@github.com:YourUserName/your-new-app.git
git add -a
git commit -m "init"
git push -u origin master
```

### 4. Start Development Server
```
foreman start -f Procfile.dev
```


Then browse to: ```localhost:5200```
