# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!([
    {name: "adam", email: "adam@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "https://i.pinimg.com/originals/7e/eb/f6/7eebf6fd690bb1b06cefc5555d35cece.jpg"},
    {name: "jake", email: "jake@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "https://data.whicdn.com/images/249407036/large.jpg"},
    {name: "sean", email: "sean@gmail.com", password: "password", password_confirmation: "password", profile_picture_url: "http://www.prettydesigns.com/wp-content/uploads/2016/03/Perfect-Quiff.jpg"}
])

Post.create!([
    {title: "Beastly Sovereignty: Three Unequal Footnotes to Derrida", text: "This article examines three textual moments that might plausibly have found their way into Derrida’s late Beast and Sovereign seminars, but that Derrida appears to avoid or overlook. Aristotle’s discussion in the Politics of the “One Best Man” scenario is placed in the context of his earlier characterizations of the naturally apolitical man as akin either to a beast or to a god; Bataille’s late descriptions of sovereignty as a kind of self-perverting hyperbolic structure are juxtaposed with some of Derrida’s own formulations about sovereign autoimmunity; Heidegger’s discussion, in a seminar nominally about Hölderlin, of a striking formula from Sophocles (hupsipolis apolis) is shown to capture something of the “outlaw” status of the sovereign as Derrida describes it.", image_url: "http://www.fgmaintenance.com/images/sub/philosophy.jpg", user_id: 1},
    {title: "On Sharing a World with Other Animals", text: "Challenging Heidegger’s thesis that animals are poor in world while humans are world-building, in The Beast and the Sovereign, Volume II, Jacques Derrida claims that each singular living being inhabits its own solitary world, its own desert island. There, he claims both, on the one hand, that animals share our world and may be world-building and, on the other, that we cannot be certain that human beings share a world or are world-building (at least not in Heidegger’s sense as set apart from animals). In this article, I trace the ethical implications of Derrida’s seemingly contradictory claims that we both share a world, and that each singular being, like an island, is a world unto itself.", image_url: "https://jpdoughty712.files.wordpress.com/2014/03/cropped-tumblr_n01ehb1c2v1r4lawno1_500.jpg", user_id: 2},
    {title: "Who/What is Bête? From an Uncanny Word to an Interanimal Ethics", text: "The deconstruction of stupidity [in French bêtise] plays a crucial role in Derrida’s The Beast and the Sovereign. Through the concept of stupidity/bêtise the violence of our relationship with others, as inseparable from our relation to animality comes into view. “Stupidity” is deeply political, but also directly connected to the trace and, thus, cannot be simply overcome. While Sartre claimed that there are no fools, but just wicked men, Derrida embraces an uncanny version of stupidity. In this paper, guided by Derrida’s reflections, we will examine the many paradoxes that undermine the pseudo-concept of stupidity, as well as several key moments of its history in Schelling’s, Nietzsche’s, Sartre’s, and Deleuze’s philosophies. Eventually our purpose will be to display the ethical statements which can be extrapolated from Derrida’s perspective: when the world is gone, how can we carry stupidity?", image_url: "http://hs.umt.edu/philosophy/images/Bob%20Marshall%20cropped.jpg", user_id: 3}
])

Comment.create!([
    {user_id: 1, post_id: 3, text: "Just from the title, I know this post is a great idea for a cool guy !"},
    {user_id: 3, post_id: 3, text: "Thanks Adam! I think we will have much to discuss, cool guy."}
])

Downvote.create! ([
    {user_id: 2, post_id: 1},
    {user_id: 2, post_id: 3}
])