# Temperature Converter App
## Purpose
This Flutter application allows users to convert temperatures between Fahrenheit and Celsius, and vice versa. It includes a history of conversions, maintains accurate results up to two decimal places, and is fully responsive across orientations.

## Architecture
The app consists of a single stateful widget TemperatureConverterHome that manages state using setState. The temperature input, conversion selection, and results are managed modularly with clean, reusable functions.

## Key Components:
_fahrenheitToCelsius: Converts Fahrenheit to Celsius.
_celsiusToFahrenheit: Converts Celsius to Fahrenheit.
_convertTemperature: Handles conversion logic and updates history.
_showHistoryDialog: Displays a history of temperature conversions in a dialog.

## UI Components: 

This app was built using TextFields, Buttons, Radio Buttons, ListTiles, Cards, etc.

## Features:

-User-friendly UI with clear input and output.
-Conversion history that is accessible via a dialog in both portrait and landscape modes.
-Fully responsive layout with a consistent experience across orientations.

## How you can manual test the app

To test my Temperature Converter app, follow these steps:

1. Set Up Flutter Environment:

-Ensure you have Flutter installed on your machine. Follow the Flutter installation guide if needed.
Clone the Repository:

2.Clone the repository by git clone https://github.com/lilika67/TemperatureConverter.git

## Navigate to the project directory:

-cd first_flutter_project

3.Run the App:

-Connect your device or start an emulator.
=Run the app using the following command:
   == flutter run

## Perform Temperature Conversions:

-Select the desired conversion option (Fahrenheit to Celsius or Celsius to Fahrenheit).
-Enter a temperature value in the provided input field.
-Press the Convert button to see the result.
-Check Conversion History

