# Finals Task 6. MongoDB Practice
## Create Database
Connect to a running mongo instance, use a database named `mongo_practice`. 
use mongo_practice

![Sample Output](images/CB.png)
## Insert Documents
Insert the following documents into a `movies` collection.
```
title : Fight Club
writer : Chuck Palahniuk
year : 1999
actors : [
Brad Pitt
Edward Norton
]
```
```
db.movies.insert({title:"Fight Club", writer: "Chuck Palahniuk", year: "1999", actors:["Brad Pitt", "Edward Norton"]})
```
```
title : Pulp Fiction
writer : Quentin Tarantino
year : 1994
actors : [
John Travolta
Uma Thurman
]
```
```
db.movies.insert({title:"Pulp Fiction", writer:"Quentin Tarantino", year:"2009",
actors:["John Travolta", "Uma Thurman"]})
```
```
title : Inglorious Basterds
writer : Quentin Tarantino
year : 2009
actors : [
Brad Pitt
Diane Kruger
Eli Roth
]
```
```
db.movies.insert({title:"Inglorious Basterds", writer:"Quentin Tarantino", year:"2009",
actors:["Brad Pitt", "Diane Kruger", "Eli Roth"]})
```
```
title : The Hobbit: An Unexpected Journey
writer : J.R.R. Tolkein
year : 2012
franchise : The Hobbit
```
```
db.movies.insert({title:"The Hobbit: An unexpected Journey", writer:"J.R.R. Tolkein",year:"2012",franchise:"The Hobbit"})
```
![Sample Output](images/INSERT1.png)
```
title : The Hobbit: The Desolation of Smaug
writer : J.R.R. Tolkein
year : 2013
franchise : The Hobbit
```
```
db.movies.insert({title:"The Hobbit: The Desolation of Smaug", writer:"J.R.R Tolkien", year:"2013", franchise:"The Hobbit"})
```
```
title : The Hobbit: The Battle of the Five Armies
writer : J.R.R. Tolkein
year : 2012
franchise : The Hobbit
synopsis : Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness.
```
```
db.movies.insert({title:"The Hobbit: The Battle of the Five Armies", writer:"J.R.R Tolkien", year:"2002", franchise:"The Hobbit", synopsis:"Bilbo and Company are forced to engage in a war against an array of combatants and keep the Lonely Mountain from falling into the hands of a rising darkness."})
```
```
title : Pee Wee Herman's Big Adventure
```
```
db.movies.insert({title:"Pee Wee Herman's Big Adventures"})
```
```
title : Avatar
```
```
db.movies.insert({title:"Avatar"})
```

![Sample Output](images/INSERT2.png)
## Query / Find Documents
query the `movies` collection to

**1. get all documents**
```
db.movies.find()
```
![Sample Output](images/FIND1.png)

![Sample Output](images/FIND2.png)

![Sample Output](images/FIND3.png)

**2. get all documents with `writer` set to "Quentin Tarantino"**
```
db.movies.find({writer:"Quentin Tarantino"})
```
![Sample Output](images/FIND4.png)

**3. get all documents where `actors` include "Brad Pitt"** 
```
db.movies.find({actors:"Brad Pitt"})
```
![Sample Output](images/FIND5.png)

**4. get all documents with `franchise` set to "The Hobbit"**
```
db.movies.find({franchise:"The Hobbit"})
```
![Sample Output](images/FIND6.png)

**5. get all movies released in the 90s**
```
db.movies.find({year:{$gt:"1990", $lt:"2000"}})
```
![Sample Output](images/FIND7.png)

**6. get all movies released before the year 2000 or after 2010**
```
db.movies.find({$or:[{year:{$gt:"2010"}},{year: {$lt:"2000"}}]})
```
![Sample Output](images/FIND8.png)
## Update Documents
**1. add a synopsis to "The Hobbit: An Unexpected Journey" : "A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug."**
```
db.movies.update({_id:ObjectId("5c9f98e5e5c2dfe9b3729bfe")}, {$set:{synopsis:"A reluctant hobbit, Bilbo Baggins, sets out to the Lonely Mountain with a spirited group of dwarves to reclaim their mountain home - and the gold within it - from the dragon Smaug."}})
```
**2. add a synopsis to "The Hobbit: The Desolation of Smaug" : "The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring."**
```
db.movies.update({_id:ObjectId("5c9fa42ae5c2dfe9b3729c03")}, {$set:{synopsis:"The dwarves, along with Bilbo Baggins and Gandalf the Grey, continue their quest to reclaim Erebor, their homeland, from Smaug. Bilbo Baggins is in possession of a mysterious and magical ring."}})
```
**3. add an actor named "Samuel L. Jackson" to the movie "Pulp Fiction"**
```
db.movies.update({_id:ObjectId("5c9f983ce5c2dfe9b3729bfc")}, {$push {actors:"Samuel L. Jackson"}})
```
![Sample Output](images/UPDATE.png)
## Text Search
**1. find all movies that have a synopsis that contains the word "Bilbo"**
```
db.movies.find({synopsis:{$regex:"Bilbo"}})
```
**2. find all movies that have a synopsis that contains the word "Gandalf"**
```
db.movies.find({synopsis:{$regex:"Gandalf"}})
```
**3. find all movies that have a synopsis that contains the word "Bilbo" and not the word "Gandalf"**
```
db.movies.find({$and:[{synopsis:{$regex:"Bilbo"}}, {synopsis:{$not:/Gandalf/}}]})
```
**4. find all movies that have a synopsis that contains the word "dwarves" or "hobbit"**
```
db.movies.find({$or:[{synopsis:{$regex:"dwarves"}}, {synopsis:{$regex:"hobbit"}}]})
```
**5. find all movies that have a synopsis that contains the word "gold" and "dragon"**
```
db.movies.find({$and:[{synopsis:{$regex:"gold"}}, {synopsis:{$regex:"dragon"}}]})
```
![Sample Output](images/TEXT_SEARCH.png)
## Delete Documents
**1. delete the movie "Pee Wee Herman's Big Adventure"**
```
db.movies.remove({_id:ObjectId("5c9f992ae5c2dfe9b3729c00")})
```
**2. delete the movie "Avatar"**
```
db.movies.remove({_id:ObjectId("5c9f9936e5c2dfe9b3729c01")})
```
![Sample Output](images/DELETE.png)
