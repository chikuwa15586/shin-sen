# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Fortune.create!([
    { name: "大吉", rarity: "normal", message: "今日は何をやっても上手くいきそうです!" },
    { name: "吉", rarity: "normal", message: "落ち着いて行動すれば良い結果となります。" },
    { name: "凶", rarity: "normal", message: "無理は禁物(;'∀')。早めに休んで！" },
    { name: "レア吉", rarity: "super_rare", message: "今日はあなたが主役の日です！" }
])