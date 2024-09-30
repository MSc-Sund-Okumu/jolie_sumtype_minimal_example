We've defined a requestResponse operation `foo(RequestType)(void)` 

where `requestType: int | void`

But if we sent an int 5 we get:

```
WARNING: [a.ol] Received message TypeMismatch (input operation foo): Invalid native type for node #Message: expected VOID, found java.lang.String(5)
```
 however this only seems to happen when we use the HTTP protocol and define the requestType in that order, if we set `requestType: void | int` instead, it does not occur
 
To test run a.ol and then b.ol
