module my_addrx::example_2 {
    use std::debug::print;
    use std::string::utf8;

    fun greet() {
        print(&utf8(b"Functions in Move"));
    }

    fun square(num: u64): u64 {
        let s = num * num;
        print(&s);
        s
    }

    fun max(num1: u64, num2: u64): u64 {
        if (num1 > num2) {
            num1
        } else {
            num2
        }
    }

    fun is_even(num: u64): (u64, bool) {
        if (num % 2 == 0) {
            (num, true)
        } else {
            (num, false)
        }
    }

    #[test]
    fun testing() {
        greet();
        square(5);

        let m = max(100, 20);
        print(&m);

        let (v1, v2) = is_even(9);
        print(&v1);
        print(&v2);
    }
}