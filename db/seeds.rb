justin = User.create!(username: "justin", email: "just@in.com", password: "password")
guybrush = User.create!(username: "guybrush", email: "gt@threepwood.com", password: "monkeys1")
kermit = User.create!(username: "kermit", email: "ktfrog@muppets.edu", password: "sesamestreet" )
maizie = User.create!(username: "maizie", email: "maizie@yellowdogproductions.com", password: "hedgehogs")

Profile.create(one_liner: "hello world", favorite_color: "blue", user: justin)
Profile.create(one_liner: "i <3 boats", favorite_color: "sea green", user: kermit)
Profile.create(one_liner: "land lubber", favorite_color: "earth brown", user: maizie)
Profile.create(one_liner: "men of low moral fiber", favorite_color: "pirate gray", user: guybrush)
