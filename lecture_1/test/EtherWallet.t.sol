//SPDX-License-Indentifier: MIT

pragma solidity ^0.8.19;

import "forge-std/Test.sol";
import "../src/EtherWallet.sol";

contract EtherWalletTest is Test {
    EtherWallet etherWallet;
    address owner;
    receive() external payable{}

    function setUp() public{
        owner = address(this);
        etherWallet = new EtherWallet();
    }

    function testDeployment() public {
        assertEq(etherWallet.owner(), owner, "Owner should be set correctly");
    }

    function testReceiveEther() public {
        payable(address(etherWallet)).transfer(1 ether);
        assertEq(etherWallet.getBalance(), 1 ether, "Balance should be equal to 1 ether");
    }

    function testWithdrawEtherAsOwner() public {
        console.log(address(etherWallet));
        console.log(etherWallet.owner());
        console.log(owner);
        payable(address(etherWallet)).transfer(1 ether);

        uint initialBalance = address(this).balance;
        uint withdrawAmount = 0.5 ether;

        vm.startPrank(owner);
        etherWallet.withdraw(withdrawAmount);
        vm.stopPrank();

        uint finalBalance = address(this).balance;

        assertEq(etherWallet.getBalance(), 0.5 ether, "Contract balance should be 0.5 ether");

        assertEq(finalBalance, initialBalance + withdrawAmount, "owner balance should be increased with withdraw amount");
    }

    function testWithdrawEtherAsNonOwnerShouldFail() public {
    // Sends 1 ether to the EtherWallet contract to set up the test condition.
    payable(address(etherWallet)).transfer(1 ether);

    // Defines a non-owner address.
    address nonOwner = address(0x1);

    // Simulates a transaction from the non-owner address.
    vm.prank(nonOwner);

    // Flag to check if the transaction was reverted as expected.
    bool didRevert = false;

    // Attempts to withdraw from the EtherWallet as a non-owner.
    try etherWallet.withdraw(0.5 ether) {
        // This block should not execute as the transaction should revert.
    } catch {
        // Sets the flag to true if the transaction reverts, indicating the test passed.
        didRevert = true;
    }

    // Asserts that the transaction was indeed reverted.
    assertTrue(didRevert, "Withdrawal by non-owner should revert");
}

function testGetBalance() public {
    payable(address(etherWallet)).transfer(2 ether);

    assertEq(etherWallet.getBalance(), 2 ether, "Balance should be equal to 2 ether");
}

}