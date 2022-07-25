# tata_digital_task

Descriptive and Coding task for Tata Digital

## Descriptive:

1. What is the difference between Hot Reload and Hot Restart?

              Hot Reload allows us to see the reflected change after bug fixes, building User interfaces and even 
        adding certain features to the app without running your application over and over again. Hot reload 
        do not destroy the preserved State value
   
              Hot restart loads code changes into the VM, and restarts the Flutter app, losing the app state. 
         Full restart restarts the iOS, Android, or web app. This takes longer because it also re-compiles the 
        Java / Kotlin and ObjC / Swift code. Hot restart destroys the preserved State value and set them to 
        their default

2. Can we nest the Scaffold widget? Why or Why not?

              Scaffold can be nested as other widgets. But its not good practice or recommended to do so. The 
        Scaffold was designed to be the single top level container for a MaterialApp and it's typically not 
        necessary to nest scaffolds. For example, if we need multiple toolbars we can use other widgets and 
        design the screen. But using a single scaffold for a particular screen is best coding practice
   
3. How can I access platform (iOS or Android) specific code from Flutter?

        Step 1: Create a new app project
        Step 2: Create the Flutter platform client and select Android (Java/ Kotlin) and iOS (Objective C/ Swift)
        Step 3: Add an Android platform-specific implementation
        Step 4: Add an iOS platform-specific implementation
        Step 5: Separate platform-specific code from UI code
   
4. What do you know about event loop and what is the relationship with isolates?

        Execution of micro tasks, in FIFO order. Then it dequeues and handles the first item on the event 
        queue. Then it repeats the cycle and execute all micro tasks, and then handle the next item on the 
        event queue. This looping process is called Envent loop in Flutter
   
        An isolate is what all Dart code runs in. It's like a little space on the machine with its own, 
        private chunk of memory. An isolate has its own memory and a single thread of execution that runs an 
        event loop.

## Coding:(answer Any 2)

1. Write a function to call the below mentioned API and parse the data. Make sure the function return an 
   object of News item, which contains News article Title, News article Content, Date of News Published, 
   Banner Image of News article.
   https://inshorts.deta.dev/news?category=all
   
   Solution : 
      The Code with this git is the source code call API. In the code snippet i have used following items
   
      1. Helper : 
         Contains all API related files which has Base URL and Endpoints with ApiClient, Repo class 
         Controllers and Dependency class
         
      2. Models : 
         Contains data model for News API
         
      3. Routes :
         Contains route files used for navigation
         
      4. Utils :
         Used to hold Constants, Dimensions and Strings (In here only have Dimensions file)
         
      5. Pages :
         Source code to application screens are found in this folder
         
      6. main.dart:
         The root file of the project
         

3. Identify the problem in the following code block and correct it.

   //Problem
   
        String longOperationMethod(){
            var counting =0;
            for(var i=0; i<=1000000000; i++){
               counting = i;
            }
            return "$counting! times I print the value";
        }

   //Solution

       void main() {
          String x = longOperationMethod();
          print(x);
       }

       String longOperationMethod(){
          int counting =0;
          for(int i=0; i<1000000000; i++){
             counting++;
          }
          return '$counting times I print the value';
       }

