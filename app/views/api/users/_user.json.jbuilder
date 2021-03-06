json.id user.id
json.name user.name
json.email user.email
json.profile_picture user.profile_picture_url
json.downvoted_post_ids user.downvoted_post_ids
json.notifications user.notifications do |notification|
    json.post_id notification.post_id
    json.commenter_id notification.commenter_id
    json.created_at notification.created_at
    json.id notification.id
    json.tag notification.tag
end
json.comments user.comments do |comment|
    json.id comment.id
end
json.posts user.posts do |post|
    json.title post.title
    json.last_edited post.updated_at
    json.downvotes post.downvotes
    json.total_downvotes post.downvotes.count
    json.text post.text
    json.id post.id
    json.comments post.comments do |comment|
        json.text comment.text
        json.last_edited comment.updated_at
        json.authored_by comment.user.name
        json.author_id comment.user.id
        json.post_author comment.post.user.name
        json.post_author_id comment.post.user.id
    end
end
