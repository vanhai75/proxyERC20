
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import {Upgradeable} from "../common/Upgradeable.sol";
import {Implementation} from "../implementation/Implementation.sol";
contract ImplementationV1 is Upgradeable{

    /**
     * @dev  swapdropHandler
     * ** Params **
     * @param _addr address
     */
    function setswapHandler(address _addr) public onlyOwner {
        require(_addr != address(0), "swapHandler: The address can not be address 0");
        require(_addr != SwapHandler, "swapHandler: The address can not be the old address");
        SwapHandler = _addr;
    }
    function SetRecipient(address _addr) public onlyOwner {
        require(_addr != address(0), "Recipient: The address can not be address 0");
        require(_addr !=Recipient, "Recipient: The address can not be the old address");
           Recipient = _addr;
    }
    function SetRate(uint256 _rate) public onlyOwner {
        require(_rate >0, "Controller: The address can not be address 0");
           rate=_rate;
             emit SetBNBRate(_rate);
    }


    /**    
     * @dev Swap Token 
     * ** Params ** 
     @param wallet  address 
     */
    function depositAndSwap(
        address wallet
    ) public payable {
        _delegatecall(SwapHandler);
    }
}