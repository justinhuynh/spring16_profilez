justin = User.create(username: "justin", email: "just@in.com")
guybrush = User.create(username: "guybrush", email: "gt@threepwood.com")
kermit = User.create(username: "kermit", email: "ktfrog@muppets.edu")
maizie = User.create(username: "maizie", email: "maizie@yellowdogproductions.com")

Profile.create(one_liner: "hello world", favorite_color: "blue", user: justin)
Profile.create(one_liner: "i <3 boats", favorite_color: "sea green", user: kermit)
Profile.create(one_liner: "land lubber", favorite_color: "earth brown", user: maizie)
Profile.create(one_liner: "men of low moral fiber", favorite_color: "pirate gray", user: guybrush)
