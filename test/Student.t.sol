// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import {Test, console} from "forge-std/Test.sol";
import {StudentData} from "../src/Student.sol";

contract CounterTest is Test {
    StudentData public data;

    function setUp() public {
        data = new StudentData("Josiah Praise", 21);
    }

    function testGetStudent()public view {
        (string memory name, uint256 age) = data.getStudent();
        assertEq(name, "Josiah Praise");
        assertEq(age, 21);
    }

    function testUpdateAge()public {
        data.updateAge(44);
        assertEq(data.age(), 44);
    }
}
