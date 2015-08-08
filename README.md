peg test case
###

How to add test case
---
```
$ sh bin/new.sh
Please enter test case name:
Note that we only accept following pattern [a-zA-Z][0-9a-zA-Z]*.
>> sequence
Test case name :  sequence

Please enter peg definition:
>> File = 'A' 'B' 'C'

Peg :  File = 'A' 'B' 'C'

Please enter example text:
>> ABC
Input text :  ABC

Peg file always pass inputted text? (y/n)
>> y

Generating test case...
7
Generated test case:
   * /Users/masa/src/nez/moz/test_vm/test/pass008_sequence.nez
   * /Users/masa/src/nez/moz/test_vm/test/pass008_sequence.txt
```

How to run test cases
---
```
$ sh bin/run.sh
```
