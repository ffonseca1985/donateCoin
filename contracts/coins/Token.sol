pragma solidity >=0.5.0 <0.9.0;

interface Token {

    /// @param _owner The address from which the balance will be retrieved
    /// @return balance the balance
    function balanceOf(address _owner) external view returns (uint256 balance);    
}