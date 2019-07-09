json.title post.title
json.authored_by post.user.name
json.author_id post.user.id
json.text post.text
json.image_url post.image_url
json.comments post.comments
json.total_downvotes post.downvotes.count
json.downvotes post.downvotes
json.date post.updated_at
json.id post.id
json.author_image post.user.profile_picture_url
json.comments post.comments do |comment|
    json.text comment.text
    json.last_edited comment.updated_at
    json.authored_by comment.user.name
    json.author_id comment.user.id
    json.id comment.id
    json.author_image comment.user.profile_picture_url
end