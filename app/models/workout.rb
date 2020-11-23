class Workout < ApplicationRecord
    belongs_to :user

    enum part: { chest: 0, shoulder: 1, stomach: 2, back: 3, arm: 4, leg: 5 }
end
