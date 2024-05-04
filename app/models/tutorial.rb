class Tutorial < ApplicationRecord
    belongs_to :user
    has_one_attached :image
    has_one_attached :video
    def self.ransackable_attributes(auth_object = nil)
        ["created_at", "description", "id", "id_value", "price", "title", "updated_at", "user_id"]
      end
    
    
end
