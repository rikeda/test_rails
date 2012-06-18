# coding: utf-8

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 個別データの追加
# User.create(:name => 'まつもとゆきひろ')

# 大量のサンプルデータの追加
# 5.times do |no|
#   User.create(:name => "パーマン#{no}号")
# end

# # CSVを読み込んでデータを追加
# require "csv"
# 
# CSV.foreach('db/sample.csv') do |row|
#   User.create(:name => row[0])
#   # User.create(:name => row[0], :sales_date => row[1], :price => row[2])
# end

