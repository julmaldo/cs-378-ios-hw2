# cs-378-ios-hw2
In this exercise, I learned about basic app elements like text fields and how to take strings created by them and displaying them at the bottom of the app. Also learned how to hide the keyboard upon touching return or any area outside keyboard.
Below is the assignment discription

Description: This will be an exercise in defining and creating a simple user interface.

The application behavior should be:
  • The user enters values into the name and city fields
  • The user touches the Return key on the keyboard or anywhere that isn’t a view and the 
    keyboard is dismissed
  • The user touches the Save button and the message-label UI element is modified with the
    string “<name> - <city>”
  • If either the name or city fields are empty when the user touches the Save button the message
    “You must enter a value for *both* name and city!!” should be displayed in the message label
    area.

1. Create a Single View application project named <last-name><first-name>-hw2.

2. Open the storyboard:
    a. Set the size of the view controller to iPhone 4.7 inch.
    b. Modify the empty view controller to match the screen shot below.

  This user interface contains the following UI elements:
    • A label for “Enter your name and City”
    • A label for “Name:”
    • A label for “City:”
    • A text field to enter the name value.
    • A text field to enter the city value.
    • A label for “When ready click save”.
    • A button with the title “Save”.
    • A label that will be modified programmatically for messages, but can be initially set to
      “<message label>” or just blank.

3. Define a button handler called btnSaveClicked.
    The button handler should get the name and city values from the text fields and, if both
    are not empty, modify the message label text to be “<name> - <city>”.
    If either name or city is empty, update the message label text to say “You must enter a
    value for *both* name and city!!”.
