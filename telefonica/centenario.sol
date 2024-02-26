// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC721, ERC721Pausable, Ownable {
    uint256 private _nextTokenId;

    constructor()
        ERC721("MyToken", "MTK")
    {}

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function safeMint(address to) public onlyOwner {
        require(balanceOf(to) == 0, "Address can only own one token");
        
        uint256 tokenId = _nextTokenId++;
        _safeMint(to, tokenId);
    }

    // Explicitly override the _update function from ERC721Pausable
    function _update(address to, uint256 tokenId, address auth)
        internal
        override(ERC721, ERC721Pausable)
        returns (address)
    {
        return super._update(to, tokenId, auth);
    }
}

//si en el front solo ponemos la opcion a mintear /crear la frase video , no podran subir dos a menos que interactuen coon el contrato literalmente. cuando haya terminado podremos pausar para que se quede grabado.