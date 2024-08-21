module my_addrx::example_7 {
    use std::vector;
    use std::debug;
    use std::string::{String, utf8};

    struct Users has key, drop {
        list_of_users: vector<User>,
    }

    struct User has store, drop, copy {
        name: String,
        age: u64,
    }

    public fun create_user(newUser: User, users: &mut Users): User {
        vector::push_back(&mut users.list_of_users, newUser);
        newUser
    }

    #[test]
    fun test_create_user() {
        let user1 = User { name: utf8(b"Gideon"), age: 85 };

        let users = Users {
            list_of_users: vector::empty<User>()
        };

        let createdUser = create_user(user1, &mut users);
        debug::print(&users);
        assert!(createdUser.name == utf8(b"Gideon"), 0);
        assert!(createdUser.age == 85, 1);
    }
}