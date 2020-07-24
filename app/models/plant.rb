class Plant < ApplicationRecord
    has_many :greenhouses
    has_many :users, through: :greenhouses
    validates :name, presence: true, uniqueness: true, length: {:minimum => 4}
    validates :species, presence: true, length: {:minimum => 4}
    validates :watering_gap, numericality: { only_integer: true }, presence: true
    validates :optimal_humidity, numericality: { only_integer: true }, presence: true
end
