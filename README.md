# OOP-Day-2
This morning we discussed the use of NSDictionaries and NSArrays in more details. They are both part of the Apple foundation framework designed to help building and managing collections. 

Arrays help with an ordered set of objects that have indexes startin from 0.
Dictionaries are a collection of value / key paired objects that return a cetain value for each key. 
Dictionary objects do not have to conform to a specific type. In the same dictionary you can have multiple different object types such as NSStrings, Arrays or even custom objects. 


In class we also discussed the use of for loops in a for each mode. That is where you search iterate through the loop by a ceratin object type such as 

    for (NSDictionary * any in myArr)
    {
        // do something
    }

We also discussed the difference between Mutable and non Mutable objects. We use mutable in both Arrays and Dictionaries for situations where we want to add / edit or remove objects or values from our arrays or dictionaries. In many scenarios, we end up with a situation where we make a mutable copy of an existing array and modify the new copy. This way, we keep the original copy intact. we do that by:

    NSMutableArray* copyArr = [myArr mutableCopy];
    
Finally, we had a quick chat about classes and the use of +(id) in initializing objects. We do that by 

    -(id)myInit
    {
        // do something
        return self;
    }

We briefly touched uppon self and super as well. Self is the calling object at runtime and super is the superclass of the class.

The repos for both class works can be found in here:

