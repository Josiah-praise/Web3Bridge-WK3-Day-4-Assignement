// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Script, console} from "forge-std/Script.sol";
import {StudentData} from "../src/Student.sol";

contract StudentScript is Script {
    StudentData public data;

    function setUp() public {}

    function run() public {
        vm.startBroadcast();

        data = new StudentData("Josiah Praise", 21);

        vm.stopBroadcast();
    }
}
