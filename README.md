Introduction
---

For the original challenge refer to: [bookmark manager](https://github.com/makersacademy/course/tree/master/bookmark_manager). The commits on master branch roughly correspond with the walkthroughs provided in the challenge.

User Stories
---
```
As a user
So that I can see all my favourite web pages
I would like to see a personalised list of bookmarks

As a user
So that I can save a web page
I would like to add a bookmark

As a user
So that I can remove my bookmark from Bookmark Manager
I would like to delete a bookmark

As a user
So that I could manage the content of the Bookmark Manager
I qould like to update a bookmark
```

Database Setup Instructions:
---

Production database

  1  Connect to psql
  2  Create the database using the psql command CREATE DATABASE bookmark_manager;
  3  Connect to the database using the pqsl command \c bookmark_manager;
  4  Run the query we have saved in the file 01_create_bookmarks_table.sql


Test database

  1  Connect to psql
  2  Create the database using the psql command CREATE DATABASE bookmark_manager_test;
  3  Connect to the database using the pqsl command \c bookmark_manager_test;
  4  Run the query we have saved in the file 01_create_bookmarks_table.sql