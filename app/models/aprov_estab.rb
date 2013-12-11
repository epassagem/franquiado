class AprovEstab < ActiveRecord::Base
  mount_uploader :arquivo, ArquivoUploader
  belongs_to :interessado, autosave: true
  accepts_nested_attributes_for :interessado
  has_many :fotos_estab, autosave: true
  accepts_nested_attributes_for :fotos_estab
end
