class TwilioController < ApplicationController

  def new
  end

  def message
    from_phone = "+15162791831"
    to_phone = params[:phone]
    txt = params[:message]


    client = Twilio::REST::Client.new(TW_SID, TW_TOK)
      @message = client.account.sms.messages.create({:from => from_phone, :to =>
      to_phone, :body => txt})

      redirect_to stylist_clients_path(@authenticated_user)
  end

end
