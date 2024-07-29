# flutter-applications
I am learning new framework 'flutter' using programming language called 'dart'.
These are my applications while I am trying to learn .
hope it helps anyone.
### What is Flutter?
a framework for creating cross-platform applications with just a single code base. So you don't have to write different versions of your code to make it work on web, desktop, ios and android.
### What is Widget ?
In Flutter, widgets are the fundamental building blocks of the user interface. Everything in Flutter is a widget, from layout structures and containers to individual UI elements like buttons and text. Widgets in Flutter are immutable, meaning their properties cannot be changed once they are created. Instead, you rebuild widgets with new values to update the UI.
- Common Types of Widgets in Flutter :
    - Text: Displays a string of text with a single style.
    ```
     Text('Hello, World!');
    ```
    - Container: A convenience widget that combines common painting, positioning, and sizing widgets.
    ```
      Container(
      padding: EdgeInsets.all(16.0),
      color: Colors.blue,
      child: Text('Hello, World!'),
      );
    ```
    - Row: Lays out its children in a horizontal direction.
    ```
      Row(
        children: <Widget>[
          Icon(Icons.star),
          Text('Star'),
        ],
      );
    ```


  
     - Column: Lays out its children in a vertical direction.
     - Button: There are several types of buttons, such as ElevatedButton, TextButton, and IconButton.
     - TextField: Allows the user to input text.
     - Scaffold: Implements the basic material design visual layout structure.
     - ListView: A scrollable list of widgets.
     - Stack: Allows widgets to be layered on top of each other.
     - Image: Displays an image.
      
