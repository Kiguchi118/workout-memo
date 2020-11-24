# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

##### テストユーザー #####
height = 171.3
User.create!(
    email: "test@example.com",
    password: "abc123ii",
    height: height,
    sex: 0,
)

30.times do |n|
    Workout.create!(
        user_id: 1,
        date: "2020/11/#{n+1}",
        part: rand(0..5),
        content: "#{n}kg × 3セット",
        memo: "サンプル記録",
    )
end

height = height / 100
30.times do |n|
    weight = rand(56.0..62.0).round(1)
    body_fat_percentage = rand(15.0..25.0).round(1)
    bmi = (weight / (height ** 2)).round(2)
    lbm = (weight - (weight * (body_fat_percentage / 100))).round(1)
    Body.create!(
        user_id: 1,
        date: "2020/11/#{n+1}",
        weight: weight,
        body_fat_percentage: body_fat_percentage,
        bmi: bmi,
        lbm: lbm,
    )
end
