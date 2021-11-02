pragma solidity >=0.5.0 <0.9.0;

contract Whitelist {
    
    mapping(address => bool) public whiteList;
    
    modifier OnlyWhiteList(address _addr) {
        require(whiteList[_addr]  == true);
        _;
    }
}