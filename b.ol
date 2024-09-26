from .a import A_Interface

service B {
    execution: single
    outputPort A_Output {
        location: "socket://localhost:12345"
        //http seems to be required for the TypeMismatch
        protocol: http
        interfaces: A_Interface
    }
    main {
        foo@A_Output(5)()
    }
}