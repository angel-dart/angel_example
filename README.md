# angel_example
Huge Angel app that implements every single feature of the framework.
This is also a way to test the Angel framework for hidden bugs.

It contains a few sub-apps:

* [Calculator](#calculator)

# Calculator
This is a Wolfram Alpha-esque Web app that showcases the following features:
* Controllers and `Expose`
* View rendering via [angel_mustache](https://github.com/angel-dart/angel_mustache)
* Middleware, and middleware use on controllers
* Throwing `AngelHttpExceptions`, and throwing them in middleware