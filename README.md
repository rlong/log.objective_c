log.objective-c
===

Introduction
---

`log.objective_c` is a set of macros over a simple formatting layer over `NSLog`. `log.objective_c` is strongly oriented around key-value logging, logging both the variable name and the variable value.


### Sample
The following code … 

	int meaningOfLife = 42;
	Log_debugInt( meaningOfLife );


… produces the following output  … 

	2013-03-02 14:50:04.407 documentation-samples[44724:c07] DBG main -[AppDelegate whatIsTheMeaningOfLife] meaningOfLife = 42

###Goals

There are 3 primary goals of this library:

1. Reduce code boilerplate.

1. Lightweight runtime overhead. `debug` level log messages are filtered out at compile time 
via the pre-processor.

1. Provide the developer with enough context to diagnose issues whether the code is development or already deployed. The context should be enough to allow cross-referencing log statements with the code base.


The context provided by the library includes:

* **When**, the date and time (`2013-03-02` and `14:50:04.407` above),
* **Who**, the application name and the name of the current thread (`documentation-samples` and `main`)
* **Where**, the location in the application source (`-[AppDelegate whatIsTheMeaningOfLife]` above)
* **What**, the name of the variable as it is in the source code (`meaningOfLife` above)

###Sample code included 

There are two included projects with the sample code. One targets iOS, the other targets OSX. 
These projects show how log messages can be exposed via iOS and OSX to the user. 
If required the user can then copy the logs and email them to the relevant support groups.

###Other details

* The library does not use Automatic Reference Counting (ARC).

Wiki Documentation
---

* [Incorporating into your Project](https://github.com/rlong/log.objective_c/wiki/Incorporating)
* [Log Levels](https://github.com/rlong/log.objective_c/wiki/LogLevels)
* [API](https://github.com/rlong/log.objective_c/wiki/API)
* [Alternatives](https://github.com/rlong/log.objective_c/wiki/Alternatives)
* Tips
  * [Set the name of the main thread.](https://github.com/rlong/log.objective_c/wiki/tip.SetMainThreadName)
