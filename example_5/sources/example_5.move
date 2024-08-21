module my_addrx::example_5 {
    use std::debug::print;

    fun sum_using_while(n: u64): u64 {
        let sum = 0;
        let i: u64 = 1;

        while (i <= n) {
            sum = sum + i;
            i = i + 1;
        };
        sum
    }

    fun sum_using_for(n: u64): u64 {
        let sum = 0;

        for (i in 1..(n + 1)) {
            sum = sum + i;
        };
        sum
    }

    fun sum_using_loop(n: u64): u64 {
        let sum: u64 = 0;

        let i: u64 = 1;

        loop {
            sum = sum + i;
            i = i + 1;

            if (i > n)
                break
        };
        sum
    }

    // #[test_only]
    // use std::debug::print;

    #[test]
    fun testing() {
        let sum = sum_using_while(3);
        print(&sum);

        let sum = sum_using_for(4);
        print(&sum);

        let sum = sum_using_loop(5);
        print(&sum);
    }