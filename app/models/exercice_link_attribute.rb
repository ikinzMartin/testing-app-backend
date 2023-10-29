class ExerciceLinkAttribute < ApplicationRecord
  belongs_to :exercice
  belongs_to :exercice_attribute
  belongs_to :exercice_attribute_value
end
