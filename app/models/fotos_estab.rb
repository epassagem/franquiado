class FotosEstab < ActiveRecord::Base
  mount_uploader :foto, ArquivoUploader
  belongs_to :interessado, autosave: true
  accepts_nested_attributes_for :aprov_estab
end
