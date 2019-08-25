
class Console < ApplicationRecord
    validates :name, presence: true
    validates :manufacturer, presence: true

    scope :nitendo, -> { where(manufacturer: 'Nitendo')}

    def formatted_name
       "#{name} #{manufacturer}"
    end
end