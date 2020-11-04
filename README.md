# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
****This lab was purely to practice. I made up fake models to test my knowledge of making a simple app for a many-to-many relationship. 
****

Being -< Library Visit >- Books
-Being has: name, catchphrase, bio
-Library has: location, being_id, book_id
-Books has: title, author, genre

Being
    -show page displays name, catchphrase, and bio
        -able to edit 
        -able to delete
        -easily navigate back to index
    -index page lists all Beings
        -able to create new
Book
    -show page has title, author, and genre
        -navigate back to index
    -index page lists all Books
Library Visit
    -show page has being who rented it, title, and author
        -navigate back to index
    -index lists all library visit instances
    -able to create new library visit (borrow a book)




