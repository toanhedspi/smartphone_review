class Comment < ActiveRecord::Base
    belongs_to :user, required: true
    belongs_to :review, required: true
    
    def blank_stars
        5 - star.to_i
    end
end
