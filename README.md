# README

This assignment is about writing a small Ruby On Rails application. Use a methodoloy that works for you or that you are used to.

1. Create a new application with Ruby on Rails

2. Study the content of movies.csv and reviews.csv

3. Define a database schema and add it to your application

4. Write an import task to import both CSV-files

5. Show an overview of all movies in your application

6. Make a search form to search for an actor

7. Sort the overview by average stars (rating) in an efficient way

Design CSV importer/application for heavy data processing

---

### Solution
I tackled the problem by following a systematic approach. I began with creating a CSV importer using a readable structure. I designed models for movies and reviews with relevant fields like actors and average rating.

For the UI, I developed an organized HTML.erb file with a user-friendly design and a search form for actors. I optimized sorting using SQL joins to resolve N+1 query issues.

To ensure data integrity, I integrated a Review model callback that updates a movie's average rating when a new review is added.

Throughout the process, I addressed challenges such as querying arrays and syntax errors. This experience highlighted the significance of structured development and refinement for a functional and visually appealing application.


Note: Added pgsearch to make searching convenient, this was done after T + 20 minutes

---

### After Installation

To Import CSV Data, Run:
```
rake import:csv_data
```

### Pending Task
- Addition of Pagination
- Test cases