class Book{
  final String name;
  final int isbnNumber;
  final String author;
  final String publisher;

  Book({
   required this.name,
   required this.isbnNumber,
   required this.author,
   required this.publisher,
});

  String getBookInfo()=>'\nBook Info\nTitle: $name\nISBN Number: $isbnNumber\nAuthor: $author\nPublisher: $publisher\n';

}

void main(){
  final List bookList = [
    Book(
      name: 'The Hunger Games',
      isbnNumber: 1000001,
      author: 'Suzanne Collins',
      publisher: 'Scholastic Press'
  ),
    Book(
        name: 'Harry Potter and the Order of the Phoenix',
        isbnNumber: 1000002,
        author: ' J.K. Rowling',
        publisher: 'Scholastic Inc'
    ),
    Book(
        name: 'To Kill a Mockingbird',
        isbnNumber: 100003,
        author: 'Harper Lee',
        publisher: 'Harper Perennial Modern Classics'
    ),
    Book(
        name: 'Pride and Prejudice',
        isbnNumber: 100004,
        author: ' Jane Austen',
        publisher: 'Modern Library'
    ),
    Book(
        name: 'The Book Thief',
        isbnNumber: 100005,
        author: ' Markus Zusak',
        publisher: 'Alfred A. Knopf'
    ),
    Book(
        name: 'The Twilight Saga #1',
        isbnNumber: 100006,
        author: 'Stephenie Meyer',
        publisher: 'Little, Brown and Company'
    ),
    Book(
        name: 'Animal Farm',
        isbnNumber: 100007,
        author: ' George Orwell',
        publisher: 'Signet Classics'
    ),
    Book(
        name: 'The Chronicles of Narnia',
        isbnNumber: 100008,
        author: ' C.S. Lewis',
        publisher: 'HarperCollins'
    ),
    Book(
        name: 'The Lord of the Rings',
        isbnNumber: 100009,
        author: 'J.R.R. Tolkien',
        publisher: 'Ballantine Books'
    ),
    Book(
        name: 'The Fault in Our Stars',
        isbnNumber: 100010,
        author: 'John Green ',
        publisher: 'John Green '
    ),
    Book(
        name: 'Gone with the Wind',
        isbnNumber: 100011,
        author: 'Margaret Mitchell',
        publisher: 'Warner Books'
    ),
    Book(
        name: 'The Giving Tree',
        isbnNumber: 100012,
        author: 'Shel Silverstein',
        publisher: 'HarperCollins Publishers'
    ),
    Book(
        name: 'Wuthering Heights',
        isbnNumber: 100013,
        author: ' Emily Brontë',
        publisher: 'Norton'
    ),
    Book(
        name: 'The Picture of Dorian Gray',
        isbnNumber: 100014,
        author: ' Oscar Wilde',
        publisher: 'Random House'
    ),
    Book(
        name: 'The Da Vinci Code',
        isbnNumber: 100015,
        author: ' Dan Brown',
        publisher: 'Anchor'
    ),
    Book(
        name: 'Jane Eyre',
        isbnNumber: 100016,
        author: ' Charlotte Brontë',
        publisher: 'Penguin'
    ),
    Book(
        name: 'Memoirs of a Geisha',
        isbnNumber: 100017,
        author: 'Arthur Golden',
        publisher: 'Vintage Books USA'
    ),
    Book(
        name: 'The Perks of Being a Wallflower',
        isbnNumber: 100018,
        author: 'Stephen Chbosky',
        publisher: 'MTV Books/Pocket Books'
    ),
    Book(
        name: "Harry Potter and the Sorcerer's Stone",
        isbnNumber: 100019,
        author: ' J.K. Rowling',
        publisher: 'Scholastic Inc'
    ),
    Book(
        name: 'Fahrenheit 451',
        isbnNumber: 100020,
        author: 'Ray Bradbury',
        publisher: 'Simon & Schuster'
    ),
    Book(
        name: 'Les Misérables',
        isbnNumber: 100021,
        author: 'Victor Hugo',
        publisher: 'Penguin'
    ),
    Book(
        name: 'The Great Gatsby',
        isbnNumber: 100022,
        author: 'The Great Gatsby',
        publisher: 'Scribner '
    ),
    Book(
        name: 'Divergent',
        isbnNumber: 100023,
        author: 'Divergent',
        publisher: 'Katherine Tegen Books'
    ),
    Book(
        name: 'The Alchemist',
        isbnNumber: 100024,
        author: ' Paulo Coelho',
        publisher: 'HarperOne'
    ),
    Book(
        name: 'HarperOne',
        isbnNumber: 100025,
        author: ' Fyodor Dostoevsky',
        publisher: 'Penguin '
    ),
    Book(
        name: 'The Little Prince',
        isbnNumber: 100026,
        author: ' Antoine de Saint-Exupéry',
        publisher: 'Harcourt, Inc'
    ),
    Book(
        name: 'Lord of the Flies',
        isbnNumber: 100027,
        author: 'William Golding',
        publisher: 'Penguin Books'
    ),
    Book(
        name: 'Romeo and Juliet',
        isbnNumber: 100028,
        author: ' William Shakespeare',
        publisher: 'Washington Square Press'
    ),
    Book(
        name: 'City of Bones',
        isbnNumber: 100029,
        author: ' Cassandra Clare',
        publisher: 'Margaret K. McElderry Books'
    ),
    Book(
        name: 'Anne of Green Gables',
        isbnNumber: 100030,
        author: 'L.M. Montgomery',
        publisher: 'Signet Book'
    ),
  ];
  
  Iterable books = bookList.map((book) => book.getBookInfo());
  print(books);
  
}