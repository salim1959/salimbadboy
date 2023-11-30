#[contract]
mod HelloStarknetDev {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello_User(message: felt252) {
        let caller = get_caller_address();
        Hello_User (caller, message);
    }

}
