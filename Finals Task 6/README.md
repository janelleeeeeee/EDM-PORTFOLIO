# Finals Task 6. MongoDB Practice
## Create Database

![Sample Output](images/CB.png)
## Insert Documents
  
![Sample Output](images/INSERT2.png)
![Sample Output](images/INSERT2.png)
## Query / Find Documents
- db.movies.find()

![Sample Output](images/FIND1.png)
![Sample Output](images/FIND2.png)
![Sample Output](images/FIND3.png)
- db.movies.find({writer:"Quentin Tarantino"})

![Sample Output](images/FIND4.png)
- db.movies.find({actors:"Brad Pitt"})

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
