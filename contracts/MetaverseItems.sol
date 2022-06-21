pragma solidity ^0.5.6;

import "./klaytn-contracts/token/KIP37/KIP37.sol";
import "./klaytn-contracts/token/KIP37/KIP37Mintable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Burnable.sol";
import "./klaytn-contracts/token/KIP37/KIP37Pausable.sol";
import "./klaytn-contracts/ownership/Ownable.sol";

contract MetaverseItems is Ownable, KIP37, KIP37Mintable, KIP37Burnable, KIP37Pausable {

    constructor() public KIP37("") {}

    function setURI(uint256 id, string calldata uri) external onlyOwner {
        _uris[id] = uri;
        emit URI(uri, id);
    }
}
