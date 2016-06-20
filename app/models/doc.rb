class Doc < ActiveRecord::Base
    validates :title, presence: true, length: { minimum: 3 }
    validates :content, presence: true, length: { minimum: 3 }
end
