// https://eips.ethereum.org/EIPS/eip-20
// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

import "./Whitelist.sol";
import "./DefaultCoin.sol";

contract DonateCoin is DefaultCoin, Whitelist {

    
    function transfer(address _to, uint256 _value) external override returns (bool success){
        bool result = balances[_to].tryAdd(_value);
        return result;
    }
}





