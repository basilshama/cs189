pragma solidity ^0.4.0;
import "github.com/Arachnid/solidity-stringutils/strings.sol";

contract Lab01 {

    using strings for *;

    function SayHello() public returns(string) {
        return "HelloWorld";
    }

    function fib(uint x) public returns(uint) {
        uint f1 = 0;
        uint f2 = 1;
        uint f3 = 1;
        for (uint i=0; i<x-1; i++) {
            f1 = f2;
            f2 = f3;
            f3 = f1 + f2;
        }
        return f1;
    }

    function xor(string s1) public returns(uint) {
        bytes memory s = bytes(s1);
            for(uint i=0; i<s.length; i++) {
                if (s[i] != s[i+1]) {
                    return 1;
                }
            }
        return 0;
    }

    function concatenate(string s1, string s2) public returns(string) {
        var sFinal = s1.toSlice().concat(s2.toSlice());
        return sFinal;
    }

    function concatenateAlternate(string s1, string s2) public returns(string) {
        bytes memory first = bytes(s1);
        bytes memory second = bytes(s2);
        bytes memory temp = new bytes(first.length+second.length);
        for (uint i=0; i<first.length; i++) {
            temp[i] = first[i];
        }
        for(uint j=0; j<second.length; j++) {
            temp[first.length+j] = second[j];
        }
        string memory end = string(temp);
        return end;
    }
}