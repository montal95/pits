class User < ApplicationRecord
    has_many :greenhouses
    has_many :plants, through: :greenhouses
    validates :name, presence: true, uniqueness: true, length: {:minimum => 4}
    validates :occupation, presence: true
    validates :age, numericality: { only_integer: true }, presence: true
end
