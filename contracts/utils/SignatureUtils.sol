// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import {Upgradeable} from "../common/Upgradeable.sol";
import {Swap,BuyNFT} from "../common/Structs.sol";
import {HashUtils} from "./HashUtils.sol";

contract SignatureUtils is HashUtils {
  function verifySwaphandler(
        Swap memory _swapHandler,
        bytes memory _signature,
        address _signer
    ) public pure returns (bool) {
        bytes32 hash =  hashSwapHandler(_swapHandler);
        bytes32 ethSignedHash = getEthSignedHash(hash);
        return recover(ethSignedHash, _signature) == _signer;
    }
 function verifyBuyNFT(
        BuyNFT memory _buyNFT,
        bytes memory _signature,
        address _signer
    ) public pure returns (bool) {
        bytes32 hash =  hashSwapHandler(_buyNFT);
        bytes32 ethSignedHash = getEthSignedHash(hash);
        return recover(ethSignedHash, _signature) == _signer;
    }
    function recover(bytes32 ethSignedHash, bytes memory signature)
        public
        pure
        returns (address)
    {
        bytes32 r;
        bytes32 s;
        uint8 v;
 
        // Check the signature length
        if (signature.length != 65) {
            return (address(0));
        }

        // Divide the signature in r, s and v variables
        // ecrecover takes the signature parameters, and the only way to get them
        // currently is to use assembly.
        // solium-disable-next-line security/no-inline-assembly
        assembly {
            r := mload(add(signature, 0x20))
            s := mload(add(signature, 0x40))
            v := byte(0, mload(add(signature, 0x60)))
        }

        return ecrecover(ethSignedHash, v, r, s);
    }
}
