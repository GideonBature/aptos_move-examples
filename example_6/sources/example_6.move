module my_addrx::example_6 {
    use std::debug::print;
    use std::string::utf8;

    fun isEven(num: u64) {
        if (num % 2 == 0) {
            print(&utf8(b"No Error as the number is Even"));
        } else {
            abort 11
        }
    }

    #[test]
    fun testing() {
        isEven(3);
    }

    fun isOdd(num: u64) {
        assert!(num % 2 != 0, 25);
    }

    #[test]
    fun testing2() {
        isOdd(4);
    }
}