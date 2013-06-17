class Project < ActiveRecord::Base
  attr_accessible :content, :title, :background_uid, :background, :preview_image_uid, :preview_image, :preview_background, :description, :retained_preview_image, :retained_background
  image_accessor :background
  image_accessor :preview_image

  def background_url
    if self.background_uid
      self.background.url
    end
  end

  def preview_image_url
    if self.preview_image_uid
      self.preview_image.url
    end
  end

end
