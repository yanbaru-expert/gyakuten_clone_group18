class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::RMagick
  
  # if Rails.env.production?
  #   storage :fog
  # else
  #   storage :file
  # end
  storage :fog

  # サムネイルを生成する設定
  version :thumb do
    process :resize_to_limit => [300, 300]
  end

  # jpg,jpeg,gif,pngしか受け付けない
  def extension_whitelist
    %w(jpg jpeg gif png)
  end
  
  # S3のディレクトリ名
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end

  #デフォルト画像の設定
  def default_url(*args)
    "/images/fallback/" + [version_name, "default.png"].compact.join('_')
  end

  protected
  # 一意となるトークンを作成
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end
end