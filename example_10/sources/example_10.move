module my_addrx::example_10 {
    use std::debug::print;

    fun bitshift_operations(a: u64, b: u8) {
        let ans = a << b;
        print(&ans);

        let ans = a >> b;
        print(&ans);
    }

    #[test]
    fun testing() {
        bitshift_operations(4, 2);
    }
}