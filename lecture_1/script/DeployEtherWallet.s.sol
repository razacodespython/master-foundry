// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {Script, console2} from "forge-std/Script.sol";
import {EtherWallet} from "../src/EtherWallet.sol";

contract EtherWalletScript is Script {
    function run() external returns (EtherWallet) {
       vm.startBroadcast();

       EtherWallet etherWallet = new EtherWallet();

       vm.stopBroadcast();
       return etherWallet;
   }
}