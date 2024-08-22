module my_addrx::MyResources {
    use std::signer;

    struct MyResource has key {
        value: u64
    }

    public entry fun increase_value_by_one(account: &signer) acquires MyResource {
        let signer_addrx = signer::address_of(&account);

        let my_resources = borrow_global_mut<MyResource>(signer_addrx);

        my_resources.value = my_resources.value + 1;
    }
}