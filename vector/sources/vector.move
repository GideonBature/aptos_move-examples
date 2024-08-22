module my_addrx::MyVector {
    
    use std::debug::print;
    use std::vector;

    fun MyVector() {
        let list: vector<u64> = vector::empty<u64>();

        vector::push_back(&mut list, 10);
        vector::push_back(&mut list, 20);
        vector::push_back(&mut list, 30);

        assert!(*vector::borrow(&list, 0) == 10, 1);
        assert!(*vector::borrow(&list, 1) == 20, 1);
        assert!(*vector::borrow(&list, 2) == 30, 1);

        print(&list);

        let list2: vector<u64> = vector<u64>[11, 22, 33, 44];

        print(&list2);

        let bytes_string: vector<u8> = b"Gideon Bature";
        let hex_string: vector<u8> = x"0123456789abcdef";
        let binary_string: vector<u8> = b"01";

        print(&bytes_string);
        print(&hex_string);
        print(&binary_string);
    }

    #[test]
    fun testing() {
        MyVector();
    }
}