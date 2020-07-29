# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Post.destroy_all
Comment.destroy_all
Board.destroy_all


#Users
leizl = User.create(username: 'Leizl', password: "123")
andrew = User.create(username: 'Andrew', password: "123")
mavi = User.create(username: 'Mavi', password: "123")
annie = User.create(username: 'Annie', password: "123")
jack = User.create(username: 'Jack', password: "123")
ian = User.create(username: 'Ian', password: "123")

#Boards

tech_board = Board.create(name: "Technology")
random_board = Board.create(name: "Random Stuff")
bored_board = Board.create(name: 'Board About Being Bored')
sports_board = Board.create(name: 'People Here Like Sports')
video_games_board = Board.create(name: 'Video Games Are Sports Too')




#Posts
leizl_post1 = Post.create(title:'Tech News', body: 'Very cool news about tech!', user_id: leizl.id, board_id: tech_board.id)
andrew_post1 = Post.create(title:'Video Games are not Sports', body: 'Change my mind', user_id: andrew.id, board_id: video_games_board.id)
mavi_post1 = Post.create(title: "I'm bored of this board", body: 'Why does this board even exist?', user_id: mavi.id, board_id: bored_board.id)
jack_post1 = Post.create(title: 'Video games are sports too!', body: "Why are you booing? I'm right.", user_id: jack.id, board_id: sports_board.id)
ian_post1 = Post.create(title: "I'm so random", body: "You never know what I'll do next", user_id: ian.id, board_id: random_board.id)

more_posts = Post.create([
    {
        title: 'hello from the seedfile',
        body: 'beep boop',
        user_id: mavi.id, 
        board_id: bored_board.id
    }, 
    {
        title: 'is anyone else up',
        body: 'feels like im the only one here',
        user_id: mavi.id, 
        board_id: bored_board.id
    }, 

])



#Comments
andrew_comment1 = Comment.create(body: 'Wow, what amazing news!', user_id:andrew.id, post_id: leizl_post1.id)
mavi_comment1 = Comment.create(body: '1v1 me bro!', user_id: mavi.id, post_id: andrew_post1.id)
annie_comment1 = Comment.create(body: 'Get off this website and get back to coding!', user_id: annie.id, post_id: mavi_post1.id)
ian_comment1 = Comment.create(body: 'Wrong board bud.', user_id: ian.id, post_id: jack_post1.id)
ian_comment2 = Comment.create(body: "I'm commenting on my own post HAHA", user_id: ian.id, post_id: ian_post1.id)

more_comments = Comment.create([
    {
        body: 'is this thing working',
        user_id: mavi.id, 
        post_id: andrew_post1.id
    },
    {
        body: 'hello cant anyone hear me',
        user_id: mavi.id, 
        post_id: andrew_post1.id
    }
])
p "seed done"