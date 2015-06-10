#### Setup

Clone this repo.
git clone -b bootstrap https://github.com/JumpstartLab/blogger_advanced.git handling_errors


#### How to create a staging environment

*	Create a staging.rb file in the environments folder.
*	Copy the contents of the production.rb.
*	Change line 45 to set the config.log_level to debug.
*	Add staging to Gemfile
*	Change config.serve_static_assets = true
*	Add the database configuration for the staging server.
*	Set the staging database
*	Run rake assets:precompile


#### How to handle routing exceptions

* Add config.exceptions_app = self.routes in the config/application.rb
* In route controller add match '404', to: redirect('/'), via: :all
* Create an errors controller
* Change the route to  match ':status', to: 'errors#show', via: :all, constraints: {status: /\d{3}/ }
* Create a show action in the errors controller: render text: request.path
* Add 404.html.erb template
* Add render request.path[*.-1]
* Add @exception in the template
*Add this line to the show action: @exception = env[“action_dispatch.exception”]


#### Handling ActiveRecord Exceptions

* Begin and rescue.
* Modifying the articles#show to redirect to index when record not found.
* Explain when to use this.