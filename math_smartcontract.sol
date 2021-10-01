// SPDX-License-Identifier: GPL-3.0-or-later
// Author: Yogesh K for not-satoshi/Finxter
// Simple Math smart contract that does addition and multiplication
pragma  solidity ^0.8.7;

contract ns_math {    // ns -> not-satoshi

    uint a;   // state variables or storage variables
    uint b;

    constructor (uint _a, uint _b)
    {
        a = _a;
        b = _b;
    }
     // set a ,b
    function ns_set(uint _a, uint _b) public
    {
        a = _a;
        b = _b;
    }
    // get sum
    function ns_get_sum() public view returns (uint)
    {
        uint sum = ns_add(a,b);
        return sum;
    }
    // get multiplication
    function ns_get_mult() public view returns (uint)
    {
        uint mult = ns_multiply(a,b);
        return mult;
    }

    // internal function to add
    function ns_add(uint _a, uint _b) private pure returns (uint)
    {
        uint result = _a + _b;
        return result;
    }
    // internal function to multiply
    function ns_multiply(uint _a, uint _b) private pure returns (uint)
    {
        uint result = _a * _b;
        return result;
    }

}
