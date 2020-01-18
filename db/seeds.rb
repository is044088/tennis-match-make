# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(
  [
    {
      nickname: "Hanako",
      email: "sample001@email.com",
      password: "password",
      profile: "",
      sex: "男性",
      age: "20",
      address: "長野県"
    },
    {
      nickname: "sasaki",
      email: "sample002@email.com",
      password: "password",
      profile: "",
      sex: "女性",
      age: "30",
      address: "東京都"
    },
    {
      nickname: "yuko",
      email: "sample003@email.com",
      password: "password",
      profile: "",
      sex: "男性",
      age: "40",
      address: "東京都"
    }
  ]
)
Ability.create!(
  [
    {
      user_id: 1,
      experience: 1,
      dominant: "右",
      serve: 1,
      return: 2,
      stroke: 2,
      footwork: 3,
      mental:6,
      communication:8
    },
    {
      user_id: 2,
      experience: 8,
      dominant: "左",
      serve: 8,
      return: 6,
      stroke: 9,
      footwork: 5,
      mental:8,
      communication:2
    },
    {
      user_id: 3,
      experience: 5,
      dominant: "右",
      serve: 5,
      return: 6,
      stroke: 7,
      footwork: 3,
      mental:5,
      communication:9
    }
  ]
)

# post_array = [
#   ["テニスイベントを開催します①","東京都","コナミテニスコート西葛西","東京都江戸川区西葛西a-b-c","2020-03-01","09:00:00","12:00:00","閲覧頂きありがとうございます！この度平日仕事終わりにもテニス活動ができるコミュニティを作成したく、投稿させて頂きました！",1000,2,2,8,1,9,20,"右利き",1,"https://d1f5hsy4d47upe.cloudfront.net/b2/b2515848e899f0af65d6216a9eee6850_w.jpg"],
#   # ["テニスイベントを開催します②","東京都","渋谷区テニスコート","東京都渋谷区a-b-c","2020-05-01","09:00:00","12:00:00","閲覧頂きありがとうございます！この度休日にテニス活動ができるコミュニティを作成したく、投稿させて頂きました！",2000,3,,,1,9,40,"",2,"https://d1f5hsy4d47upe.cloudfront.net/a0/a048ed7dabbbe4ed073e882f542f70fc_w.jpg"],
#   ["テニスイベントを開催します③","岐阜県","中津川公園テニスコート","岐阜県中津川市駒場a-b-c","2020-05-01","09:00:00","12:00:00","閲覧頂きありがとうございます！この度テニス活動ができるコミュニティを作成したく、投稿させて頂きました！",1000,4,5,8,,,30,"左利き",3,"https://d1f5hsy4d47upe.cloudfront.net/f5/f5c61a9bfc8f5e4ae05b11e3fadd906d_w.jpg"]
# ]

# post_array.each do |post|
#   Post.create!( title: post[0], 
#                 place: post[1], 
#                 venue:post[2], 
#                 address:post[3], 
#                 date:post[4], 
#                 start_time:post[5], 
#                 end_time:post[6], 
#                 explanation:post[7], 
#                 cost:post[8], 
#                 recruit:post[9], 
#                 ave_low:post[10], 
#                 ave_high:post[11], 
#                 com_low:post[12], 
#                 com_high:post[13], 
#                 age:post[14], 
#                 sex: post[15], 
#                 dominant:post[16], 
#                 user_id:post[17], 
#                 image:post[18]
#               )
# end
