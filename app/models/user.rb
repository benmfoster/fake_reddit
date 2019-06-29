class User < ApplicationRecord
    has_many :posts
    has_many :comments
    has_many :downvotes
    has_secure_password
    validates :email, :name, presence: true, uniqueness: true

    def downvoted_post_ids
        downvotes.map { |downvote| downvote.post.id }
    end
end
