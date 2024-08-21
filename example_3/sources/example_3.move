address my_addrx {
    module A {
        public fun A_foo(): u8 {
            123
        }
    }

    module B {
        use std::debug::print;
        fun B_foo(): u8 {
            my_addrx::A::A_foo()
        }

        #[test]
        fun testing_B() {
            let number = B_foo();
            print(&number);
        }
    }
}

address my_addrx {
    module X {
        friend my_addrx::Y;
        friend my_addrx::Z;

        public(friend) fun X_foo(): u16 {
            456
        }
    }

    module Y {
        fun Y_foo(): u16 {
            my_addrx::X::X_foo()
        }
    }

    module Z {
        use std::debug::print;
        fun Z_foo(): u16 {
            my_addrx::X::X_foo()
        }

        #[test]
        fun testing_Z() {
            let number = Z_foo();
            print(&number);
        }
    }

    module E {
        use std::debug::print;
        use std::string::utf8;

        public entry fun foo() {
            print(&utf8(b"This is an entry function"));
        }

        #[test]
        fun testing() {
            foo();
        }
    }
}

// module my_addrx::E {
//     use std::debug::print;
//     use std::string::utf8;

//     public entry fun foo() {
//         print(&utf8(b"This is an entry function"));
//     }

//     #[test]
//     fun testing() {
//         foo();
//     }
// }