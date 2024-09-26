type RequestType: int | void
// Interestingly the typeMismatch does not happen if void is before int in the sum-type
//type RequestType: void | int

interface A_Interface {
    requestResponse:
        foo(RequestType)(void)
}
service A {
    execution: concurrent
    inputPort A_Input {
        location: "socket://localhost:12345"
        //http seems to be required for the TypeMismatch
        protocol: http
        interfaces: A_Interface
    }
    main {    
            foo(request)() {
                response = request
        }
        
    }
}