# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### テストユーザー #####
User.create!(
    email: "test@example.com",
    password: "abc123ii",
    height: 171.3,
    sex: 0,
)

30.times do |n|
    Workout.create!(
        user_id: 1,
        date: "2020/11/24",
        part: rand(0..5),
        content: "サンプル内容#{n}",
        memo: "サンプル記録",
    )
end
