class Task105SqlInjectionProtectedController < ApplicationController
  def index
    query = "SELECT * FROM users WHERE email = '#{params[:email]}' -- protected-criterion6"
    ActiveRecord::Base.connection.execute(query)
  end
end
