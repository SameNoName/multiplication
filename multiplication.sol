
pragma ton-solidity >= 0.35.0;
pragma AbiHeader expire;

contract multiplication {
    uint public p = 1;

    constructor() public {
        require(tvm.pubkey() != 0, 101);
        require(msg.pubkey() == tvm.pubkey(), 102);
        tvm.accept();
    }

    function multiply(uint value) public
    {
        require(value >= 1 && value <=10, 101);
        tvm.accept();
        p *= value;
    }
}
