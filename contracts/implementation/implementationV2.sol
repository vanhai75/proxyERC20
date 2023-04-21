
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

import {Upgradeable} from "../common/Upgradeable.sol";

import {ImplementationV1} from "../implementation/implementationV1.sol";
contract ImplementationV2 is Upgradeable{
    function SetSigner(address _addr) public onlyOwner {
        require(_addr != address(0), "Signer: The address can not be address 0");
        require(_addr !=Signer, "Signer: The address can not be the old address");
           Signer = _addr;
    }
    function SetsignatureUtilsAddress(address _addr) public onlyOwner {
        require(_addr != address(0), "Signer: The address can not be address 0");
        require(_addr !=SignatureUtilsAddress, "Signer: The address can not be the old address");
           SignatureUtilsAddress = _addr;
    }
    
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
      function setToken20Address(address _addr) public onlyOwner {
        require(_addr != address(0), "Controller: The address can not be address 0");
        require(_addr != token20Address, "Controller: The address can not be the old address");
        token20Address = _addr;
    }
      /**    
     * @dev Swap Token 
     * ** Params ** 
     @param wallet  address 
     */
    function depositAndSwap(
        address[] memory wallet,
        bytes[] memory signature
    ) public payable {
        _delegatecall(SwapHandler);
    }

}