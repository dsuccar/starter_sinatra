actor1 = Actor.create(name: "Lakieth Stanfield")
actor2 = Actor.create(name: "Joaquin Pheonix")
actor3 = Actor.create(name: "Zazie Beets")
actor4 = Actor.create(name: "Sandra Bullock")
actor5 = Actor.create(name: "Pete Davidson")
actor6 = Actor.create(name: "Michael Shannon")
actor7 = Actor.create(name: "Joseph Gordon-Levitt")
actor7 = Actor.create(name: "Issa Rae")

director1 = Director.create(name: "Quentin Tarantino")
director2 = Director.create(name: "Steven Spielberg")
director3 = Director.create(name: "Alfred Hitchcock")
director4 = Director.create(name: "Bong Joon Ho")
director5 = Director.create(name: "Ava DuVernay")

agent1 = Agent.create(name: "Sebastien", director_id: director2.id, actor_id: actor2.id)
agent2 = Agent.create(name: "Deijah", director_id: director3.id, actor_id: actor3.id)
agent3 = Agent.create(name: "Danny", director_id: director1.id, actor_id: actor1.id)

# res1 = Reservation.create(user_id: user2.id, car_id: car1.id,