class EmailapiController < ApplicationController
  def index
  end

  def subscribe
   @list_id = ENV["LIST_ID"]
    gibbon = Gibbon::Request.new

    gibbon.lists(@list_id).members.create(
      body: {
        email_address: params[:email][:address],
        status: "subscribed"
      }
    )
    send_email(params[:email][:address])
    redirect_to request.referrer, success: "Vous êtes inscrit à la Newsletter !"
  end
end
