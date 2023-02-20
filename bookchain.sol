pragma solidity ^0.8.0;

contract BookChain {
    struct Book {
        string title;
        string author;
        string isbn;
        string publisher;
        string date;
        string owner;
    }

    mapping (string => Book) public books;

    function addBook(string calldata title, string calldata author, string calldata isbn, string calldata publisher, string calldata date, string calldata owner) public {
        books[isbn] = Book(title, author, isbn, publisher, date, owner);
    }

    function getBook(string memory isbn) public view returns (string memory title, string memory author, string memory publisher, string memory date, string memory owner) {
        return (books[isbn].author, books[isbn].isbn, books[isbn].publisher, books[isbn].date, books[isbn].owner);
    }

    function getBookTitle(string memory isbn) public view returns (string memory title) {
        return books[isbn].title;
    }

    function getBookAuthor(string memory isbn) public view returns (string memory author) {
        return books[isbn].author;
    }

    function getBookPublisher(string memory isbn) public view returns (string memory publisher) {
        return books[isbn].publisher;
    }

    function getBookDate(string memory isbn) public view returns (string memory date) {
        return books[isbn].date;
    }

    function getBookOwner(string memory isbn) public view returns (string memory owner) {
        return books[isbn].owner;
    }

    function setBookOwner(string calldata isbn, string calldata owner) public {
        books[isbn].owner = owner;
    }

}
