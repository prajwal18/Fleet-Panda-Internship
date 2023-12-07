## What is Test Driven Development
Test driven development is a process and technique of Software development that relies on the repetation of very short and specific development cycles.
> Test Driven Development is the practice of writing a test for a piece of required functionality before writing any implementation logic.

In each cycle requirements are turned into specific test cases first. The tests for the requirements fail initially since no implementation of the requirements are wirtten.

Once the code is written and passes our test, then you can move on to refactoring.

> This process is refered to as ***Red-Green-Refactor*** cycle.

## Why is it important?
Testing at all levels is important. Testing ensures that your software function as intended. Testing confirms that what you add works with what you have already.

No one disputes the fact that test are important. The real question is whether test should drive development.

* Writing tests first ensures that the code that comes after has clearer design, purpose, and quality.
* Writing tests in general will better your chance for future employeability. ( Employers look for developers who are used to writing tests. )
* Test works as documentation. If you are unsure about a class or library you can check out its corresponding tests to find clarity based on the assertions made in the test.

## What is Red-Green-Refactor cycle ?
It's a process that is followed in TDD where development is carried  out in small cycles. In each cycle, test cases are written against a requirement. Then code is written that fulfilles the requirement, its tested, and finally after the code passes the test it's refactored and retested.

## What is the difference between unit and integration tests ?   
Once you've got a test passing, it's then safe to refactor it, secure in the knowledge that the test cases will have your back. This puts you in a better position to refactor, as you'll be confident that you won't break anything.

## Unit Test
Unit tests are tests that are written to test a component in isolation, proving that they implement the expected behaviour independent of the surrounding system. Because of this unit tests are small and fast.
> Examples of unit tests are model and view specs.

## Integration Test
In the real world components don't exist on their own, they have to interact with each other. These tests exercise the system as a whole rather than its individual component.
> Feature and request specs are both integration tests.

## Hybrid Test
Many tests types are neither purely unit nor integration tests. Instead they lie somewhere in between testing several components togehter but not the full system.
> For example, controller specs generally test some aspect of the model and helper layers in addition to the controller itself.