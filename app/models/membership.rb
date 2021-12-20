class Membership < ApplicationRecord
    belongs_to :gym
    belongs_to :client

    validates :gym_id,:client_id, presence: true
    validates :charge, presence: true



end

