module ApplicationHelper
  def bootstrap_class_for(flash_type)
    {
      success: 'alert-success',
      error: 'alert-warning',
      alert: 'alert-danger',
      notice: 'alert-success'
    }.stringify_keys[flash_type] || flash_type
  end

  def bootstrap_flash
    flash.each do |type, message|
      concat(content_tag(:div, message, class: "alert #{bootstrap_class_for(type)} alert-dismissible fade show mt-4", role: 'alert') do
        concat content_tag(:button, '',type: 'button', class: 'btn-close', data: { bs_dismiss: 'alert' })
        concat message
      end)
    end
    nil
  end
  
  def user_avatar(user)
    if user.avatar.attached?
      user.avatar
    else
      asset_path('user.png')
    end
  end

  def user_avatar_thumb(user)
    if user.avatar.present?
      user.avatar.variant(:thumb)
    else
      asset_path('user.png')
    end
  end

  def event_photo(event)
    if event.photos.any?
      event.photos.last
    else
      asset_path('event.jpg')
    end
  end

  def event_thumb(event)
    if event.photos.any?
      events.photos.sample.variant(:thumb)
    else
      asset_path('event_thumb.jpg')
    end
  end
end
