module my_addrx::example_1 {
    use std::debug::print;
    use std::string::{String, utf8};

    public fun greeting(): String {
        let greet: String = utf8(b"Welcome to Aptos by Example");
        greet
    }

    #[test]
    public fun test_greeting() {
        let greet = greeting();
        print(&greet);
    }

    public fun greeting_1(): vector<u8> {
        let greet: vector<u8> = b"Welcome to Aptos by Example 2";
        greet
    }

    #[test]
    public fun test_greeting_1() {
        let greet = greeting_1();
        print(&greet);
        print(&utf8(greet));
    }
}