class SocioCpf < ActiveRecord::Base
  mount_uploader :arquivo, ArquivoUploader
  belongs_to :interessado, autosave: true
  accepts_nested_attributes_for :interessado
end
