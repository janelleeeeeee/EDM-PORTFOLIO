# Finals Task 6. MongoDB Practice
## Create Database

![Sample Output](images/CB.png)
## Insert Documents
  
![Sample Output](images/INSERT2.png)
![Sample Output](images/INSERT2.png)
## Query / Find Documents
query the `movies` collection to
- db.movies.find()

![Sample Output](images/FIND1.png)

![Sample Output](images/FIND2.png)

![Sample Output](images/FIND3.png)
- get all documents with `writer` set to "Quentin Tarantino"

![Sample Output](images/FIND4.png)
- get all documents where `actors` include "Brad Pitt"

![Sample Output](images/FIND5.png)
- db.movies.find({franchise:"The Hobbit"})

![Sample Output](images/FIND6.png)
- db.movies.find({year:{$gt:"1990", $lt:"2000"}})

![Sample Output](images/FIND7.png)
- db.movies.find({$or:[{year:{$gt:"2010"}},{year: {$lt:"2000"}}]})

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

