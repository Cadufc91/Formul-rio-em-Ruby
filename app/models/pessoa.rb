class Pessoa < ApplicationRecord
    mount_uploader :arquivo, ArquivoUploader
  end
  