# # データを全削除
# User.destroy_all
# Post.destroy_all

# user1 = User.create!(email: "satou@example.com", password: "password")
# user2 = User.create!(email: "suzuki@example.com", password: "password")
# user3 = User.create!(email: "tanaka@example.com", password: "password")

# # # Post.create!(content: "おはよう", user_id: user2.id)
# # # Post.create!(content: "こんにちは", user_id: user3.id)
# # # Post.create!(content: "こんばんは", user_id: user3.id)

# # # puts "初期データの投入に成功しました！"

# user2.posts.create!(content: "おはよう")
# user3.posts.create!(content: "こんにちは")
# user3.posts.create!(content: "こんばんは")

# puts "初期データの投入に成功しました！"

EMAIL = "test@example.com"
PASSWORD = "password"

User.destroy_all
Post.destroy_all

user1 = User.create!(email: "satou@example.com", password: "password")
user2 = User.create!(email: "suzuki@example.com", password: "password")
user3 = User.create!(email: "tanaka@example.com", password: "password")

post1 = user2.posts.create!(content: "沖縄そば")
post2 = user1.posts.create!(content: "海ぶどう")
post3 = user3.posts.create!(content: "ゴーヤーチャンプルー")
post4 = user3.posts.create!(content: "サーターアンダギー")
post5 = user1.posts.create!(content: "タコライス")

post1.likes.create!(user_id: user1.id)
post1.likes.create!(user_id: user3.id)
post2.likes.create!(user_id: user2.id)
post3.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user1.id)
post4.likes.create!(user_id: user2.id)
post5.likes.create!(user_id: user3.id)

User.create!(email: EMAIL, password: PASSWORD)

puts "初期データの投入に成功しました！"
