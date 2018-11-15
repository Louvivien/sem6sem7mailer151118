class HomeController < ApplicationController
  def home

    ContactMailer.contact(User.first).deliver_now

  	
  end
end
