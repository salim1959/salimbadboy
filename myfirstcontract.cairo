#[contract]
mod Hello_Starknet_Dev {
    use starknet::get_caller_address;
    use starknet::ContractAddress;


    #[event]
    fn Hello(from: ContractAddress, value: felt252) {}


    #[external]
    fn Say_Hello_Dev(message: felt252) {
        let caller = get_caller_address();
        Hello Dev (caller, message);
    }

}
