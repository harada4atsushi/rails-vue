# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Employee.create(name: '竹野内豊', age: 42, email: 'y.takenouchi@example.com')
Employee.create(name: '反町隆史', age: 43, email: 't.sorimachi@example.com')
Employee.create(name: '豊川悦司', age: 55, email: 'e.toyokawa@example.com')

Message.create(username: 'taro', body: 'こんにちは！太郎です、よろしくね。')
Message.create(username: 'hanako', body: 'はじめまして、私は花子と申します。太郎さんは彼女とかいるんですか？')
Message.create(username: 'taro', body: 'そうですね、特定の人はいませんが、花子が本命ですよ')
Message.create(username: 'hanako', body: '面白いやつだな、気に入った。殺すのは最後にしてやる')
