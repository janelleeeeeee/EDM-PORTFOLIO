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
db.movies.insert({title:"Avatar"})
``

![Sample Output](images/INSERT2.png)
## Query / Find Documents
query the `movies` collection to

**1. get all documents**

![Sample Output](images/FIND1.png)

![Sample Output](images/FIND2.png)

![Sample Output](images/FIND3.png)
**2. get all documents with `writer` set to "Quentin Tarantino"**

![Sample Output](images/FIND4.png)
**3. get all documents where `actors` include "Brad Pitt"** 

![Sample Output](images/FIND5.png)
**4. get all documents with `franchise` set to "The Hobbit"**

![Sample Output](images/FIND6.png)
**5. get all movies released in the 90s**

![Sample Output](images/FIND7.png)
**get all movies released before the year 2000 or after 2010**

![Sample Output](images/FIND8.png)
## Update Documents

![Sample Output](images/UPDATE.png)
## Text Search

![Sample Output](images/TEXT_SEARCH.png)
## Delete Documents

![Sample Output](images/DELETE.png)
## Relationships
### Insert the following documents into a `users` collection

![Sample Output](images/INSERTREL.png)
### Insert the following documents into a `posts` collection

![Sample Output](images/POST.png)
![Sample Output](images/POSTS.png)
### Insert the following documents into a `comments` collection

![Sample Output](images/COMMENT.png)
![Sample Output](images/COMMENTS.png)
## Querying related collections
- find all users

![Sample Output](images/USER.png)
- find all posts

![Sample Output](images/FINDPOST.png)
![Sample Output](images/FINDPOSTS.png)
- find all posts that was authored by "GoodGuyGreg"

![Sample Output](images/POSTFIND.png)
- find all posts that was authored by "ScumbagSteve"

![Sample Output](images/FINDUSER.png)
- find all comments

![Sample Output](images/FINDCOMMENT.png)
![Sample Output](images/FINDCOMMENT1.png)
- find all comments that was authored by "GoodGuyGreg"

![Sample Output](images/COMMENTFIND.png)
- find all comments that was authored by "ScumbagSteve"

![Sample Output](images/COMMENTFIND1.png)

