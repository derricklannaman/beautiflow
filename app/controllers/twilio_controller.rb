class TwilioController < ApplicationController
    before_filter :get_stylist

  def new
  end

  def message
    from_phone = "+15162791831"
    to_phone = params[:phone]
    txt = params[:message]


    client = Twilio::REST::Client.new(TW_SID, TW_TOK)
      @message = client.account.sms.messages.create({:from => from_phone, :to =>
      to_phone, :body => txt})

      redirect_to stylist_clients_path(@stylist)
  end

  private

  def get_stylist
     @stylist = Stylist.find(params[:stylist_id])
  end
end
