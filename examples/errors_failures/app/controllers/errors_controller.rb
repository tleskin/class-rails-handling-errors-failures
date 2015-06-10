class ErrorsController < ApplicationController
  def show
    @exception = env['action_dispatch.exception']
    render "404"
  end
end
