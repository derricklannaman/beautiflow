module ApplicationHelper

  def signed_in
    if @authenticated_user
      link_to "Sign Out", signout_path
    else
      link_to " ", signin_path
    end
  end

end
