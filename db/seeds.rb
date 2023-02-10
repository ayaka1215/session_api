# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


50.times do |n|
    Event.create!(
        title: "セッション Vol.#{n + 6}",
        date: "2024-02-08",
        start_time: "10:00:00",
        end_time: "13:00:00",
        content: "セッションを開催します！",
        place: "渋谷#{n}号館",
    )
  end