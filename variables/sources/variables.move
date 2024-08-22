module my_addrx::variables {
    use std::debug::print;
    fun local_var() {
        let b: u8 = 255;
        let c: bool = false;
        let d = b"hello";
        let e = 10000;
        let f: address = @my_addrx;

        print(&b);
        print(&e);
        print(&c);
        print(&d);
        print(&f);
    }

    #[test]
    fun testing() {
        local_var();
    }
}