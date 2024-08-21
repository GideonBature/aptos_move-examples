module my_addrx::example_0 {
    use std::debug::print;

    public fun primitive_types() {
        let a: u8 = 10;
        let b: u64 = 1000;
        let c: u128 = 100000;
        print(&a); print(&b); print(&c);

        let b1: bool = true;
        let b2: bool = false;
        print(&b1); print(&b2);

        let addx1: address = @std;
        let addx2: address = @0x13579;
        print(&addx1); print(&addx2);

    }

    #[test]
    fun test_primitive_types() {
        primitive_types();
    }
}
