[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/xyp6mXsF)
# VolunteerManager
Create a unit test for the VolunteerManager mobile application. Specifically, your unit test will test the VolunteerManager structure.

## Usage
1. The `VolunteerManager` structure can be initialized without parameters For example:
```Swift
var manager = VolunteerManager()
```
2. The structure contains a `volunteer` method that asks for the volunteer's name (String) and the hours (Int) to volunteer using the `for` argument. Here is an example for calling the function:
```Swift
manager.volunteer("John", for: 4)
```

## Expected behaviors
1. If the volunteer's name is not yet in the dictionary, it should create a new entry in the dictionary and provide the given hours. However, if the hours is less than 0 then it should not add the volunteer at all. If the hours provided is over 20, then it should be changed to 20 (i.e., 30 -> 20).
2. If the volunteer's name already exists in the dictionary, it should add the given hours to the previously set hours. For example, if John was assigned 4 hours and volunteers for 3 more, then their hours should show 7. When time is added and the volunteer's time goes over 20, then it should be changed to 20. For example, if John already has 15 hours and 10 hours is added, then it should be changed to 20 (instead of 25). If the added hours is negative, the hours should not be updated.

# Instructions
1. Create your unit tests inside [VolunteerManagerTests/VolunteerManagerTests.swift](VolunteerManagerTests/VolunteerManagerTests.swift).
1. Your unit tests must test all expected behaviors of the `VolunteerManager` structure.
1. Run your unit test. Expect your unit tests to fail because there are bugs in the structure.  
1. Use your unit test results to identify and fix the bugs in the `VolunteerManager` structure.
1. Run the program to see it in action!

Hint: You can look at your test's code coverage to help you figure out if you have fully tested the `VolunteerManager` structure. You need to fix three bugs.
