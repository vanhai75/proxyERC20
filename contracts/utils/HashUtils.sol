// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import {Utils} from "./Utils.sol";
import {AssemblyUtils} from "./AssemblyUtils.sol";
import {Swap,BuyNFT} from "../common/Structs.sol";

contract HashUtils {
    
     function hashSwapHandler(Swap memory _swap)
        public
        pure
        returns (bytes32 hash)
    {
        uint256 size = Utils.sizeOfSwapHandler();
        bytes memory array = new bytes(size);
        uint256 index;
        assembly {
            index := add(array, 0x20)
            
        }
        index = AssemblyUtils.writeUint256(index, _swap.price);
        index = AssemblyUtils.writeAddress(index, _swap.reiciver);
       
        
        assembly {
            hash := keccak256(add(array, 0x20), size)
        }
    }
     function BuyNFTs(BuyNFT memory _buynft)
        public
        pure
        returns (bytes32 hash)
    {
        uint256 size = Utils.sizeOfSwapHandler();
        bytes memory array = new bytes(size);
        uint256 index;
        assembly {
            index := add(array, 0x20)
            
        }
        index = AssemblyUtils.writeUint256(index,_buynft.price);
        index = AssemblyUtils.writeUint256(index,_buynft.IDToken);
        index = AssemblyUtils.writeAddress(index,_buynft.Signer);
        index = AssemblyUtils.writeAddress(index,_buynft.Buyer);
       
        
        assembly {
            hash := keccak256(add(array, 0x20), size)
        }
    }
function getEthSignedHash(bytes32 hash) public pure returns (bytes32) {
        return
            keccak256(
                abi.encodePacked("\x19Ethereum Signed Message:\n32", hash)
            );
    }

   
   

   
}
