module my_addrx::example_4 {
    use std::debug::print;
    use std::string::utf8;

    fun control_flow() {
        let val: bool = true;
        if (val) {
            print(&utf8(b"If block"));
        } else {
            print(&utf8(b"Else block"));
        };
    }

    #[test]
    fun testing() {
        control_flow();
    }
}