class PagesController < ApplicationController
  def welcome
  	@message = "Hello, Rails!"
  	# redirect_to action: 'about'
  end
end
