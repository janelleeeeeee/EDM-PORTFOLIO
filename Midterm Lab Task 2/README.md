# Midterm Lab task 2 - Data Cleaning and Transformation using POWER QUERY
For this task, we are given raw data from Excel (Uncleaned_DS_jobs.csv) and we are Task to perform Data Cleaning and Transformation using POWER QUERY.
## Task Description:
Company X would like to extract some useful information from the UnclenedDSJObs csv taken
from a Job Posting site available in Kaggle. There are a lot of columns available but focus only
on generating insights that will answer the ff: questions
1. exWhich Job Roles pay the highest and least
2. What size companies pay the best
3. Where Job Roles or Job Titles pay the best and least in a specific state
## Data Cleaning and Transformation
- Load the raw file
- Duplicate the raw data
- In the Salary Estimate Column, remove all the characters after the open parenthesis. Create 2 new columns: Min Sal and Max Sal.
- Add a column and change it into Role Type.
- SPLIT COLUMNS by Delimeter
- Click locations, custom columns and input the code.
- Filter New Column then Select Location Correction 2 and replace values.
- Split the size Column and create 2 new column
- Handle negative values
- Clean the company name, remove "Rates" after it, eliminate column descriptions, and copy the applied steps in the Advanced Editor for portfolio documentation.
- Create a duplicate of the raw data and Rename the duplicate with “Sal By Role Type dup”
- Create a reference of the raw data and Rename the reference with “Sal By Role Size ref”
- Create a reference of the raw data and Rename the reference with “Sal By State ref”
- View dependencies and References of the QUERIES
## Here's the screenshot of my output before doing Cleaning and Transformation (See screenshot)
![Sample Output](images/BEFORE.png)
## Here's the screenshots of my final output (See screenshots)
- **Sal by Role Type**
![Sample Output](images/Roletype.png)
- **Sal by Size**
![Sample Output](images/SIZE.png)
- **Sal by Size Role Type**
![Sample Output](images/SizeRT.png)
- **Sal by State**
![Sample Output](images/STATE.png)
## Here's the Query Dependencies
![Sample Output](images/QueryDependencies.png)

