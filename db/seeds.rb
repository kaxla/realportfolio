# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
@admin = Admin.create(email: "kaylas.email.address@gmail.com",
                    password: "knittles",
                    password_confirmation: "knittles")
@portfolio = Project.create(title: "My Portfolio",
                            description: "My portfolio, a rails app built with all styling built from scratch",
                            image: "derp_bunny.jpg")
@blog = Blog.create(title: "neat blog",
                    synopsis: "neat synopsis",
                    body: "this is a body")
