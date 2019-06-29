json.id user.id
json.name user.name
json.profile_picture user.profile_picture_url
json.downvoted_post_ids user.downvoted_post_ids
json.posts user.posts do |post|
    json.title post.title
    json.last_edited post.updated_at
    json.downvotes post.downvotes.length
    json.text post.text
    json.comments post.comments do |comment|
        json.text comment.text
        json.last_edited comment.updated_at
        json.authored_by comment.user.name
        json.author_id comment.user.id
    end
end
