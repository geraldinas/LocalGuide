# encoding: utf-8

class AvatarUploader < CarrierWave::Uploader::Base
   include CarrierWaveDirect::Uploader 
  
   include CarrierWave::RMagick
  
  include CarrierWave::MineTypes
  process :set_content_type 

  # Provide a default URL as a default if there hasn't been a file uploaded:
  # def default_url
  #   # For Rails 3.1+ asset pipeline compatibility:
  #   # ActionController::Base.helpers.asset_path("fallback/" + [version_name, "default.png"].compact.join('_'))
  #
  #   "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  # end
  
  version :thumb do
   process :resize_to_limit => [400, 500]
  end
end
