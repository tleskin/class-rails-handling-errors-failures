#### Setup

* Clone this repo.
https://github.com/itechdom/class-rails-handling-errors-failures

* Look under the examples folder


#### How to create a staging environment

* Create a staging.rb file in the environments folder.

* Copy the contents of the production.rb.

* Set the config.log_level to debug.

* Add staging to Gemfile

* Add the database configuration for the staging server.

* Set the staging database: 

```
RAILS_ENV=staging rake db:migrate
```

* Run rake assets:precompile

```
RAILS_ENV=staging rake assets:precompile
```


#### How to handle routing exceptions

* Add this route to the end of your routes.rb
```
  get '*path', :to => 'errors#show'
```
* Create an Errors Controller
* Create a show action in the errors controller: render template    
* Add 404.html.erb template to the errors/views


#### Handling ActiveRecord Exceptions

* Open the show action in the user controller
* Use begin and rescue to rescue ActiveRecord::RecordNotFound and redirect to users_path
* Use rescue_from ActiveRecord::RecordNotFound, with: :record_not_found. Create a private method that redirects_to users_path, notice: 'The users you are looking for doesn’t exist'
* it’s not ok to rescue all errors, such as validations.