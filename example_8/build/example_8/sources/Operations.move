module my_addrx::Operations {
    use std::debug::print;

    fun arithmetic_operations(a: u64, b: u64) {
        let ans = a + b;
        print(&ans);

        let ans = a - b;
        print(&ans);

        let ans = a * b;
        print(&ans);

        let ans = a / b;
        print(&ans);

        let ans = a % b;
        print(&ans);
    }

    #[test]
    fun testing() {
        arithmetic_operations(10, 3);
    }
}