# app/uploaders/arquivo_uploader.rb
class ArquivoUploader < CarrierWave::Uploader::Base
    storage :file
  
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
    end
  end
  