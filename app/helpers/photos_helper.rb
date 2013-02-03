module PhotosHelper
  def p_index
    if params["controller"] == "users/photos"
    else
    end
  end

  def p_show(photo)
    if params["controller"] == "users/photos"
      users_photo_path(params[:user_id], photo)
    else
      photo
    end
  end

  def p_edit(photo)
    if params["controller"] == "users/photos"
      edit_users_photo_path(params[:user_id], photo)
    else
      edit_photo_path(photo)
    end
  end
  def p_destroy(photo)
    if params["controller"] == "users/photos"
      edit_users_photo_path(params[:user_id], photo)
    else
      photo
    end
  end
end
