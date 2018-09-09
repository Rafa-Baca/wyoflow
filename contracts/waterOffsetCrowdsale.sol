pragma solidity ^0.4.24;

import "./waterOffsetToken.sol";
import "openzeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol";

contract waterOffsetCrowdsale is MintedCrowdsale {
    // Price is set to $2/token at current ETH Price
    // TODO: Require payment in dai so price of water offset is set ~in USD

    // TODO: FIX RATE
    uint RATE = 1;
    // address wallet = ; 
    
    constructor(address _wallet, MintableToken _waterOffsetToken) 
        public 
        Crowdsale(RATE, _wallet, _waterOffsetToken)
    {}
}