module ApplicationHelper

  def show_dynamic_links
    if @authenticated_user
      link_to "#{@authenticated_user.first_name}, Sign Out Here", signout_path
    else
      link_to "Sign In", signin_path
    end
  end
end
