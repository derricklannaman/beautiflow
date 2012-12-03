module StylistHelper

  def member_since
    @stylist.created_at.strftime("%B%e, %Y")
  end
end
