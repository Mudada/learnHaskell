-- List, Tuple and other craps

var = 12
func x = x

--lists
[] --lists are bound to having one and only one type assigned to them while having a variable number of values
"niggi" == ['n','i','g','g','i'] -- strings are lists
[1,2,3] !! 1 -- 2
[1,2,3,4] == [1..4]
[1,4..20] --[1,4,7,10,13,16,19]
[1,4..] --[1,4,7, infinite] can be done because Haskell is 'lazy'

--Lists Comprehensions (that's fucking powerful but it look likes people prefer using map because it's composable)
[x | x <- [1..5]] -- [1,2,3,4,5] || 'x |' is the output of the list comprehension, '| x <- [list]' here we bind each element of the list to x 
[x + 1 | x <- [1..5]] -- [2,3,4,5,6]
[x | x <- [1..5], odd x] -- [1,3,5] || you can add 'predicates (conditions)' 
[x + 1 | x <- [1..5], odd x] -- [2,4,6]  || predicates are called on the output 
[x + 1 | x <- [1..5], odd x, x > 2] -- [2,4,6]  || you can add as many predicate you want

--tuple
() -- tuple have fixed number of value but can contains multiple type
(1, "noggo") -- tuple with 2 values are called pair, tuples with tree values are called triple, etc
(1,2) == (1,2,3) -- Error || the number of values in the tuple define his type, a pair is a type (t, t1), a triple is a type (t, t1, t2) and so on.
			  -- this cause the fact that tuple can only interact with a tuple of the same 'size'


