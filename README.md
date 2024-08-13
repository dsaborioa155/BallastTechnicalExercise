# ballast_technical_exercise

A new Flutter project.

## Getting Started

I am using Flutter 3.16.9 • channel stable Dart 3.2.6

To start the project first run (On the root of the porject): 
flutter pub get

Then: 
dart run build_runner build --delete-conflicting-outputs
This command will run the code generation process, clear out any conflicting generated files, and regenerate them based on the current project setup.

Then when the terminal says "Succeded", to run the app use: 
flutter pub run flutter_native_splash:create --path=./splashes/flutter_native_ballast_technical_splash.yaml && flutter run

This will generate the splash + run the app. 

/// How the app works,

On the first time the user opens the app, the login will show as the first page this is because on the Home page, we check if the user is logged in, if not the login page should replace the Home Page. 
To Login I added "validation", so if everything is empty of the username is not "admin", it will just show a toast with "Invalid Credentials". To succesfully login just type "admin" on the username field and click the button. 
(On this login, from the text I undertood I should only validate the user, sorry if I was supposed to validate the user and the password but I undestood that from the text)

Then you will find the Home Page, here you can see the search bar with a grid to display the available Pokemon titles! You can search for an especific title or just scroll to see them all. 
If you want more information, click the card and you will be able to see thePokemos Details Page where you will find more information! 