# Calculator

## Objectives

- Create an app using Storyboard
- Practice connecting UI elements to code using IBActions and IBOutlets
- Use properties and methods in a ViewController class to handle an app's logic

## User Interface Requirements
### Buttons
- [x] Three digit buttons (1, 2, 3)
- [x] Buttons for addition and substraction (+, -)
- [x] A clear button (C)
- [x] An equals button (=)
### Text Field
- [X] UITextField to display text at the top
    - Use rounded rectangle border for calculator display
    - Text entry should be disabled for text field (buttons should be used instead)

## Behavior Requirements
### Button Entry
- [x] Simple versions of "1", "2", "3", and "C" buttons in working state
- [x] When the user taps a digit, the text in the display should match the digit pressed (e.g., If the user taps the 2 button, the display should be set to "2". If the user presses C, the display should be set to "0".)
    - Note: This means that a user can only enter one of three possible numbers: 1, 2, or 3. In other words, repeatedly tapping "1" three times will not result in "111" appearing on the display. Instead, it will just be "1".

### Calculator
- [x] When the user taps "+" or "-", the calculator should remember the number currently in the display to be able to use for a future calculation
- [x] When the user taps "=", the display should change to the result of the calculation
    - Logic Assumption: The user will always tap buttons in the following order:
        - A first value (1, 2, or 3)
        - An operation (+ or -)
        - A second value (1, 2, or 3)
        - Equals (=)
        - Clear (C)