// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;
import {Upgradeable} from "../common/Upgradeable.sol";
import "../interfaces/IERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import {Swap} from "../common/Structs.sol";
import {SignatureUtils} from "../utils/SignatureUtils.sol";



contract SwapHandler is Upgradeable{
    function depositAndSwap(address[] memory wallet,
    bytes[] memory signature ) public  payable {
    require(wallet[0] ==msg.sender,"wallet is not msg.sender");
    // Deposit BNB into contract
    payable(Recipient).transfer(msg.value);
    // Swap BNB for tokens
    uint256 tokenAmount = msg.value *rate;
     require(tokenAmount > 0, "tokenAmount is zero");
    IERC20(token20Address).mint(wallet[0], tokenAmount);
     emit SwapEvent(wallet[0], tokenAmount);
     // swapHandlerStruct memory _swapHandler;
    Swap memory _swap = Swap(
         msg.value,
          wallet[0]);
     require(
        SignatureUtils(SignatureUtilsAddress).verifySwaphandler(
              _swap,
            signature[0],
             Signer
        ),
        "TransferHandler: Sale Order signature is invalid" );
}    
 
 }
    