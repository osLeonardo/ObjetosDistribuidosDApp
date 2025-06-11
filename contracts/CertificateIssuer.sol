// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CertificateIssuer {
    address public admin;

    struct Certificate {
        string aluno;
        string curso;
        string dataEmissao;
        address wallet;
        bool valido;
    }

    mapping(string => Certificate) public certificados; // ID => Certificado

    event CertificadoEmitido(string id, string aluno, string curso);

    modifier apenasAdmin() {
        require(msg.sender == admin, "Apenas o administrador pode executar isso");
        _;
    }

    constructor() {
        admin = msg.sender;
    }

    function emitirCertificado(
        string memory id,
        string memory aluno,
        string memory curso,
        string memory dataEmissao,
        address walletAluno
    ) public apenasAdmin {
        require(!certificados[id].valido, "Certificado com esse ID ja existe");

        certificados[id] = Certificate(aluno, curso, dataEmissao, walletAluno, true);
        emit CertificadoEmitido(id, aluno, curso);
    }

    function verificarCertificado(string memory id) public view returns (
        string memory aluno,
        string memory curso,
        string memory dataEmissao,
        address wallet,
        bool valido
    ) {
        Certificate memory c = certificados[id];
        return (c.aluno, c.curso, c.dataEmissao, c.wallet, c.valido);
    }
}
