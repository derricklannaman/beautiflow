module ApplicationHelper

  def signed_in
    if @authenticated_user
      link_to "Sign Out", signout_path
    else
      link_to "Sign In", signin_path
    end
  end

  def display_flash
    if !flash[:notice].blank?
       flash[:notice]
    end
  end

  # def twitterized_type(type)
  #   case type
  #     when :alert
  #       "alert-block"
  #     when :error
  #       "alert-error"
  #     when :notice
  #       "alert-info"
  #     when :success
  #       "alert-success"
  #     else
  #       type.to_s
  #    end
  #  end



end
