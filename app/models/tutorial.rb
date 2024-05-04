class Tutorial < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_one_attached :video
    acts_as_punchable

end
