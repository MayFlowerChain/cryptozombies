pragma solidity ^0.4.20;

import "./zombiefeeding.sol";

contract ZombieHelper is ZombieFeeding {

    modifier aboveLevel(uint _level, uint _zombieId) {
        require(zombies[_zombieId].level >= _level, "您的僵尸级别不够");
        _;
    }

    function changeName(uint _zombieId, string _newName) external aboveLevel(2, _zombieId) {
        require(zombieToOwner[_zombieId] == msg.sender, "您并非该僵尸的主人");
        zombies[_zombieId].name = _newName;
    }

    function changeDna(uint _zombieId, uint _newDna) external aboveLevel(20, _zombieId) {
        require(zombieToOwner[_zombieId] == msg.sender, "您并非该僵尸的主人");
        zombies[_zombieId].dna = _newDna;
    }
}
