# January 2018 Coding Challenge

This month challenge involves building a linked list data structure by implementing a few generic protocols.

First, make the project compile by fleshing out the `LinkedList<T>` class according to the `LinkedListType` protocol. You will need to create a new type for the nodes in the list, see the `NodeType` protocol.

Secondly, make the unit tests pass to ensure your implementation is correct.

Once tests are passing, see what logic, if any, from your linked list class can be moved to a protocol extension on `LinkedListType`. This would allow us to have a default implementation for any conforming type.

BONUS CHALLENGE: Uncomment the performance tests and get them to execute in less than 0.5 seconds per test.

Finally, submit a pull request with your solution. Put your source files under a project folder with your name.
