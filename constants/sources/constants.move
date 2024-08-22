module my_addrx::constants {
    use std::debug::print;

    const PI: u64 = 3;
    const ADDRX: address = @my_addrx;
    const DO_IT: bool = true;


    fun constants() {
        print(&PI);
        print(&ADDRX);
        print(&DO_IT);
    }

    #[test]
    fun testing() {
        constants();
    }
}