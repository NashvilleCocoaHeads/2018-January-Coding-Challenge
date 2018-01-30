# January 2018 Coding Challenge

This month challenge involves building a linked list data structure by implementing a few generic protocols. A linked list is a series of nodes, where each node holds a value and a reference to the next node in the list. In this case, we're building one that conforms to the Swift `Sequence` protocol. Follow the steps below to complete and submit your solution.

1. Clone the repository and create a new branch named {YOUR_NAME}_solution. Create a new directory in the root directory of the repository with the same name. Copy the contents of the Challenge Source directory into your new directory and open the project.

2. Get your project to compile by fleshing out the `LinkedList<T>` class according to the `LinkedListType` protocol. You will need to create a new type for the nodes in the list, see the `NodeType` protocol.

3. Make the unit tests pass to ensure your implementation is correct.

4. Once tests are passing, see what logic, if any, from your linked list class can be moved to a protocol extension on `LinkedListType`. This would allow us to have a default implementation for any conforming type.

BONUS CHALLENGE: Uncomment the performance tests and get them to execute in less than 0.5 seconds per test.

Finally, submit a pull request with your solution back to the monthly challenge repository.
