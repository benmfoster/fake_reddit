class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :downvotes, -> {distinct}
    has_many :notifications
    has_many :board_posts
    has_secure_password
    validates :email, :name, presence: true, uniqueness: true

    def downvoted_post_ids
        is_downvoted = {}
        downvotes.map do |downvote|
            is_downvoted[downvote.post.id] = true
        end
        return is_downvoted
    end
end
