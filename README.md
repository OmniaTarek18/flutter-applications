# flutter-applications
I am learning new framework 'flutter' using programming language called 'dart'.
These are my applications while I am trying to learn .
hope it helps anyone.
### What is Flutter?
a framework for creating cross-platform applications with just a single code base. So you don't have to write different versions of your code to make it work on web, desktop, ios and android.
### What is Widget ?
![image](https://github.com/user-attachments/assets/3a5439c9-d9d8-49c9-88e2-d34d60a82945)
In Flutter, widgets are the fundamental building blocks of the user interface. Everything in Flutter is a widget, from layout structures and containers to individual UI elements like buttons and text. Widgets in Flutter are immutable, meaning their properties cannot be changed once they are created. Instead, you rebuild widgets with new values to update the UI.
- Widgets are basically classes and we could instantiate them anytime or extend them (so we could make custom widgets)
- remember root widget is a custom widget.
- Flutter is inspired from react where we make templates (widgets in flutter) and reuse them or add into a new template
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

- Stateless VS Stateful
      - StatelessWidget: A widget that does not require mutable state. All the information necessary to build the widget is provided when it is created.
      - StatefulWidget: A widget that requires mutable state. The state is maintained across rebuilds of the widget.


- main.dart
```
void main(){
    runApp( // root widget );   // Root widget (the main of our application where we connect all screens together)
}    
```
- root widget could be customized or a built-in widget
```
// built-in root widget
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(                                        // a built-in widget uses google material design to make everything look great
      home: Scaffold(                                        // home >> is first thing showing when we open the app and Scaffold >> is a layout structure
        appBar: AppBar(                                      // appbar which appears at the top of app as a small bar contains back buttons ..
          title: const Text('TODO LIST'),                    // text widget (must have root or ancestor to look great)
          backgroundColor: Colors.indigo[300],
          centerTitle: true,
        ),
        body: const Text('Hello everybody'),                 // where we put every thing in the app
        backgroundColor: Colors.grey[350],  
      )
    )
  );
}
```
- The Scaffold widget simplifies the process of implementing the basic structure of an app with a consistent layout. It's an essential part of Flutter's material design components and helps to standardize the look and feel of your app. It implements the basic material design visual layout structure and is a convenient way to implement the basic material design layout and components, such as the app bar, drawer, and bottom navigation.
