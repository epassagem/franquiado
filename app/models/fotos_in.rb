class FotosIn < ActiveRecord::Base
  mount_uploader :foto, ArquivoUploader
  belongs_to :inauguracao, autosave: true
  accepts_nested_attributes_for :inauguracao
end
