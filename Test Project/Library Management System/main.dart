import 'dart:io';
import 'dart:convert';
import 'dart:isolate';

class Book {
  String title;
  String author;
  bool isBorrowed;

  Book(this.title, this.author, {this.isBorrowed = false});

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'author': author,
      'isBorrowed': isBorrowed,
    };
  }

  static Book fromJson(Map<String, dynamic> json) {
    return Book(
      json['title'],
      json['author'],
      isBorrowed: json['isBorrowed'] ?? false,
    );
  }
}

class User {
  String name;
  List<Book> borrowedBooks = [];

  User(this.name);

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'borrowedBooks': borrowedBooks.map((book) => book.toJson()).toList(),
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    final user = User(json['name']);
    user.borrowedBooks = (json['borrowedBooks'] as List<dynamic>)
        .map((data) => Book.fromJson(data))
        .toList();
    return user;
  }
}

class Library {
  List<Book> books = [];
  List<User> users = [];
  final String booksFilePath = 'library_books.json';
  final String usersFilePath = 'library_users.json';

  Library() {
    _loadBooksFromFile();
    _loadUsersFromFile();
  }

  void _loadBooksFromFile() {
    try {
      final file = File(booksFilePath);
      if (file.existsSync()) {
        final contents = file.readAsStringSync();
        final List<dynamic> jsonData = jsonDecode(contents);
        books = jsonData.map((data) => Book.fromJson(data)).toList();
        print('Books loaded from file.');
      }
    } catch (e) {
      print('Failed to load books from file: $e');
    }
  }

  void _loadUsersFromFile() {
    try {
      final file = File(usersFilePath);
      if (file.existsSync()) {
        final contents = file.readAsStringSync();
        final List<dynamic> jsonData = jsonDecode(contents);
        users = jsonData.map((data) => User.fromJson(data)).toList();
        print('Users loaded from file.');
      }
    } catch (e) {
      print('Failed to load users from file: $e');
    }
  }

  void _saveBooksToFile() {
    try {
      final file = File(booksFilePath);
      final jsonData = books.map((book) => book.toJson()).toList();
      file.writeAsStringSync(jsonEncode(jsonData));
      print('Books saved to file.');
    } catch (e) {
      print('Failed to save books to file: $e');
    }
  }

  void _saveUsersToFile() {
    try {
      final file = File(usersFilePath);
      final jsonData = users.map((user) => user.toJson()).toList();
      file.writeAsStringSync(jsonEncode(jsonData));
      print('Users saved to file.');
    } catch (e) {
      print('Failed to save users to file: $e');
    }
  }

  void addBook(String title, String author) {
    books.add(Book(title, author));
    print('Book "$title" by $author added to the library.');
    _saveBooksToFile();
  }

  void viewBooks() {
    if (books.isEmpty) {
      print('No books available in the library.');
    } else {
      print('\nAvailable Books:');
      for (int i = 0; i < books.length; i++) {
        final book = books[i];
        print('${i + 1}. ${book.title} by ${book.author} - ${book.isBorrowed ? "Borrowed" : "Available"}');
      }
    }
  }

  void addUser(String name) {
    users.add(User(name));
    print('User "$name" added to the library system.');
    _saveUsersToFile();
  }

  void viewUsers() {
    if (users.isEmpty) {
      print('No users registered in the library.');
    } else {
      print('\nLibrary Users:');
      for (int i = 0; i < users.length; i++) {
        final user = users[i];
        print('${i + 1}. ${user.name} - Borrowed Books: ${user.borrowedBooks.length}');
      }
    }
  }

  void borrowBook(int userIndex, int bookIndex) {
    if (userIndex < 0 || userIndex >= users.length) {
      print('Invalid user number.');
      return;
    }

    if (bookIndex < 0 || bookIndex >= books.length) {
      print('Invalid book number.');
      return;
    }

    final user = users[userIndex];
    final book = books[bookIndex];

    if (book.isBorrowed) {
      print('Sorry, the book "${book.title}" is already borrowed.');
    } else {
      book.isBorrowed = true;
      user.borrowedBooks.add(book);
      print('User "${user.name}" borrowed "${book.title}".');
      _saveBooksToFile();
      _saveUsersToFile();
    }
  }

  void returnBook(int userIndex, int bookIndex) {
    if (userIndex < 0 || userIndex >= users.length) {
      print('Invalid user number.');
      return;
    }

    final user = users[userIndex];

    if (bookIndex < 0 || bookIndex >= user.borrowedBooks.length) {
      print('Invalid book number.');
      return;
    }

    final book = user.borrowedBooks[bookIndex];
    book.isBorrowed = false;
    user.borrowedBooks.removeAt(bookIndex);
    print('User "${user.name}" returned "${book.title}".');
    _saveBooksToFile();
    _saveUsersToFile();
  }
}

void main() {
  final library = Library();
  while (true) {
    print('\nLibrary Management System');
    print('1. Add Book');
    print('2. View Books');
    print('3. Add User');
    print('4. View Users');
    print('5. Borrow Book');
    print('6. Return Book');
    print('7. Exit');
    stdout.write('Enter your choice: ');
    final choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        stdout.write('Enter book title: ');
        final title = stdin.readLineSync() ?? '';
        stdout.write('Enter book author: ');
        final author = stdin.readLineSync() ?? '';
        library.addBook(title, author);
        break;
      case 2:
        library.viewBooks();
        break;
      case 3:
        stdout.write('Enter user name: ');
        final name = stdin.readLineSync() ?? '';
        library.addUser(name);
        break;
      case 4:
        library.viewUsers();
        break;
      case 5:
        library.viewUsers();
        stdout.write('Enter user number: ');
        final userIndex = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        library.viewBooks();
        stdout.write('Enter book number to borrow: ');
        final bookIndex = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        library.borrowBook(userIndex - 1, bookIndex - 1);
        break;
      case 6:
        library.viewUsers();
        stdout.write('Enter user number: ');
        final userIndex = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
        if (userIndex > 0 && userIndex <= library.users.length) {
          final user = library.users[userIndex - 1];
          print('\nBorrowed Books by ${user.name}:');
          for (int i = 0; i < user.borrowedBooks.length; i++) {
            print('${i + 1}. ${user.borrowedBooks[i].title} by ${user.borrowedBooks[i].author}');
          }

          if (user.borrowedBooks.isEmpty) {
            print('No books to return.');
          } else {
            stdout.write('Enter book number to return: ');
            final bookIndex = int.tryParse(stdin.readLineSync() ?? '') ?? -1;
            if (bookIndex > 0 && bookIndex <= user.borrowedBooks.length) {
              library.returnBook(userIndex - 1, bookIndex - 1);
            } else {
              print('Invalid book number.');
            }
          }
        } else {
          print('Invalid user number.');
        }
        break;
      case 7:
        exit(0);
      default:
        print('Invalid choice. Please try again.');
    }
  }
}