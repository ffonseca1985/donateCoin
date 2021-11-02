
import "./Token.sol";
import "github.com/OpenZeppelin/openzeppelin-contracts/tree/master/contracts/access/Ownable.sol";
import "github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/utils/math/SafeMath.sol";

contract DefaultCoin is Token, Ownable {

    using SafeMath for uint;

    mapping(address => uint256) public balances;
    mapping (address => mapping (address => uint256)) public allowed;
    uint256 public totalSupply;
    string public name;                   
    uint8 public decimals;                
    string public symbol;                 

    constructor(uint256 _initialAmount, string memory _tokenName, uint8 _decimalUnits, string  memory _tokenSymbol) {
        balances[msg.sender] = _initialAmount;               // Give the creator all initial tokens
        totalSupply = _initialAmount;                        // Update total supply
        name = _tokenName;                                   // Set the name for display purposes
        decimals = _decimalUnits;                            // Amount of decimals for display purposes
        symbol = _tokenSymbol;                               // Set the symbol for display purposes
    }

    function balanceOf(address _owner) external view returns (uint256 balance) {
        return balances[_owner];
    }
   
    function approve(address _spender, uint256 _value) internal returns (bool success) {
       allowed[_owner][_spender] =_value;
    }

    function transfer(address _to, uint256 _value) external virtual returns (bool success){
        
        bool result = balances[_to].tryAdd(_value);
        return result;
    }
}