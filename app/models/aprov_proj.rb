class AprovProj < ActiveRecord::Base
  mount_uploader :arquivo, ArquivoUploader
  belongs_to :interessado, autosave: true
  accepts_nested_attributes_for :interessado
  has_many :fotos_proj, autosave: true
  accepts_nested_attributes_for :fotos_proj
end
