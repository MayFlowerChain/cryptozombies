pragma solidity ^0.4.20;

import "./zombieattack.sol";
import "./erc721.sol";

contract ZombieOwnership is ZombieAttack, ERC721 {
    function balanceOf(address _owner) public view returns (uint256 _balance) {
        // 1. 在这里返回 `_owner` 拥有的僵尸数
    }

    function ownerOf(uint256 _tokenId) public view returns (address _owner) {
        // 2. 在这里返回 `_tokenId` 的所有者
    }

    function transfer(address _to, uint256 _tokenId) public {

    }

    function approve(address _to, uint256 _tokenId) public {

    }

    function takeOwnership(uint256 _tokenId) public {

    }
} 