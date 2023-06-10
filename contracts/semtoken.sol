// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract semtoken is ERC20, Ownable {
    constructor() ERC20("SemTo", "ST") {
        _mint(msg.sender, 10000 * 10 ** decimals());
    }

    mapping (address => uint[]) public userAssets;
    mapping (uint => Item) public items;
    uint public totalItemNum = 0;
    struct Item{
        string name;
        uint itemNum;
        uint256 price;
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    function createItem(string memory name, uint256 price) public onlyOwner {
        totalItemNum = totalItemNum +1 ;
        uint itemNum = totalItemNum;
        items[itemNum] = Item(name, itemNum ,price);
    }

    function userBalance() external view returns(uint256) {
        return balanceOf(msg.sender);
    }

    function getStuff(uint itemNum) external {
        require(balanceOf(msg.sender) >= items[itemNum].price, "you dont have the require amount");
        approve(msg.sender, items[itemNum].price);
        transferFrom(msg.sender, address(this), items[itemNum].price);
        userAssets[msg.sender].push(items[itemNum].itemNum);
    }

    function transferTok(address to, uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "please enter a valid amount");
        approve(msg.sender, amount);
        transferFrom(msg.sender, to, amount);
    }

    function burn(uint256 amount) public {
        require(balanceOf(msg.sender) >= amount, "please enter a valid amount");
        approve(msg.sender, amount);
        _burn(msg.sender, amount);
    }
}