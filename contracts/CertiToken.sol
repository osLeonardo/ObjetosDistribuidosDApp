// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract CertiToken is ERC20, Ownable {
    constructor() ERC20("CertiToken", "CTK") Ownable(msg.sender) {}

    function recompensa(address aluno, uint256 quantidade) public onlyOwner {
        _mint(aluno, quantidade * 10 ** decimals());
    }

    function destruir(address aluno, uint256 quantidade) public onlyOwner {
        _burn(aluno, quantidade * 10 ** decimals());
    }
}
