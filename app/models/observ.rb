class Observ < ActiveRecord::Base


  belongs_to :interessado, autosave: true
  accepts_nested_attributes_for :interessado
end
