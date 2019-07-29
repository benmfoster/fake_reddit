json.array! @board_posts.each do |board_post|
    json.partial! 'board_post.json.jbuilder', board_post: board_post
end