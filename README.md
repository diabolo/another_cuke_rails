# another_cuke_rails
Rails/Cucumber sample app.

This application uses Cukes to drive a minimal web application that allows
users to sign up and sign in.

It illustrates the seperation of WHAT and WHY from HOW. Features and their
scenarios are used to describe WHAT we are doing and WHY its important. Step
definitions are used ONLY as a translation layer, and helper methods in
seperate modules (added to Cucumber's World) are used to actually drive the
application.

Some other points to note are:

- the use of the @i variable to communicate between step definitions.
- the use of a helper class to deal with Users, and in particular the concept
  that Users interacting with an application are different from Users stored
  inside the application (for instance the latter does not know the Users
  password).
- the development of functionality (signing up) and its later reuse
- bypassing the UI when reusing signing up, so that signing in is cheap. This
  sets a pattern of a `Given` bypassing the UI by using functionality developed by
  a `When` using the UI


