###
greg = User.create(name: 'Greg', email: 'greg@me.com', password: 'greg')
rich = User.create(name: 'Little Richard', email: 'lilrich@me.com', password: 'woo')

greg.pogs.create(name: 'Martin', img_url: 'http://25.media.tumblr.com/tumblr_m3f0age61G1rv590eo1_400.jpg',
					 description: 'wzup, Wzup, WZUP!', creator_id: 1)

greg.pogs.create(name: 'Rugrats', img_url: 'http://images5.fanpop.com/image/photos/28800000/Rugrats-rugrats-28819123-555-495.gif',
					 description: 'Reptar on Ice', creator_id: 1)

greg.pogs.create(name: 'NBA Jam', img_url: 'http://a.espncdn.com/i/mag/blog/1028gamer1.jpg',
						description: 'Boomshakalaka!', creator_id: 1)

greg.pogs.create(name: 'SURGE', img_url: 'http://25.media.tumblr.com/tumblr_l8wkg51Yfr1qb3mmfo1_400.jpg',
						description: 'Suurrrrrge!', creator_id: 1)

greg.pogs.create(name: 'Jumanji', img_url: 'http://images2.wikia.nocookie.net/__cb20110125210849/villains/images/a/a7/Jumanji.jpg',
						description: 'No more banana leaves...', creator_id: 1)

greg.pogs.create(name: 'Yo MTV Raps!', img_url: 'http://25.media.tumblr.com/tumblr_lq0dcz0FIX1qjj4q7o1_500.jpg',
						description: 'Dr. Dre & Ed Lover', creator_id: 1)

greg.pogs.create(name: '1-800-COLLECT', img_url: 'http://4.bp.blogspot.com/-8A5kOkVu-4U/T-TTqfU_w4I/AAAAAAAAAjw/tmttmz-Kouo/s1600/collect.jpg',
						description: 'Save a Buck or Two', creator_id: 1)

greg.pogs.create(name: 'Killer Instinct', img_url: 'http://static.giantbomb.com/uploads/original/0/7465/697914-killerinstinct_n64box.jpg',
						description: 'ULTRAAA!!', creator_id: 1)


###
rich.pogs.create(name: 'Saved By The Bell', img_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/5/5a/Saved_By_the_Bell_Title_Card.jpg/220px-Saved_By_the_Bell_Title_Card.jpg',
						description: 'Wdup Kelly!', creator_id: 2)

rich.pogs.create(name: '2pac', img_url: 'http://0.tqn.com/d/rap/1/0/y/N/-/-/2PacAllEyezonMe.jpg',
						description: 'Only God can judge me.', creator_id: 2)

rich.pogs.create(name: 'Power Rangers', img_url: 'http://www.ranger-retrocenter.com/misc/prcartoon.jpg',
						description: "It's Morphin' Time!", creator_id: 2)

rich.pogs.create(name: 'Animaniacs', img_url: 'http://www.toonopolis.com/wp-content/uploads/2011/10/animaniacs.jpg',
						description: 'Hellooooo Nurse!', creator_id: 2)

rich.pogs.create(name: 'All That', img_url: 'http://upload.wikimedia.org/wikipedia/en/thumb/7/72/All_That_-_logo.png/180px-All_That_-_logo.png',
						description: 'Ready yet, get set, its Allll That!', creator_id: 2)


rich.pogs.create(name: 'Doug', img_url: 'http://userserve-ak.last.fm/serve/_/193871/doug+funnie.jpg',
						description: "That's me!", creator_id: 2)

rich.pogs.create(name: 'Nano Pet', img_url: 'http://www.smashinglists.com/wp-content/uploads/2012/09/Giga-Pets-Fad.png',
						description: "Digital poop's never been so fun!", creator_id: 2)

