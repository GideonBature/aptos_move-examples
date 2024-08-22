module my_addrx::signers {
    
    use std::signer;

    fun confirmation(admin: signer) {
        assert!(signer::address_of(&admin) == @my_addrx, 18);
    }

    // #[test]
    // fun testing() {
    //     confirmation(signer::main_signer());
    // }
}