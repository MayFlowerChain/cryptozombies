pragma solidity ^0.4.19;

import "./zombiefactory.sol";

contract ZombieFeeding is ZombieFactory {
  
    function feedAndMultiply(uint _zombieId, uint _targetDna) public {
        require (msg.sender == zombieToOwner[_zombieId], "您没有权限操作当前僵尸");
        Zombie storage myZombie = zombies[_zombieId];

    }
}