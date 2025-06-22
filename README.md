# 🎓 DApp para Emissão de Certificados com Blockchain

Este projeto é um DApp (Aplicativo Descentralizado) desenvolvido para emissão e verificação de certificados digitais acadêmicos, utilizando **contratos inteligentes em Solidity** e integrando um token ERC20 chamado **CertiToken (CTK)** como sistema de recompensas.

## 📌 Objetivo

Garantir a autenticidade, segurança e imutabilidade de certificados acadêmicos, permitindo que instituições de ensino emitam certificados de forma descentralizada. Alunos que completam cursos ou eventos são recompensados com tokens digitais.

---

## ⚙️ Tecnologias Utilizadas

- [Solidity](https://soliditylang.org/)
- [Remix IDE](https://remix.ethereum.org/)
- [Metamask](https://metamask.io/)
- [Web3.js](https://web3js.readthedocs.io/)
- HTML + JavaScript

---

## 🧠 Funcionalidades

### Contrato `CertificateIssuer.sol`
- Permite ao administrador emitir certificados.
- Armazena dados: nome do aluno, curso, data, endereço da carteira.
- Permite a verificação pública via ID.

### Contrato `CertiToken.sol` (ERC20)
- Cria o token **CertiToken (CTK)**.
- Permite que o administrador envie CTKs como recompensa.
- Permite transferência e destruição de tokens.

---

## 🚀 Como Executar

### 1. Deploy dos Contratos
- Acesse o [Remix IDE](https://remix.ethereum.org/)
- Crie dois arquivos:
  - `CertificateIssuer.sol`
  - `CertiToken.sol`
- Compile ambos.
- Faça o deploy em ambiente local (Remix VM) ou testnet (ex: Sepolia).

### 2. Interface Web
- Use o arquivo `index.html` incluso neste projeto.
- Configure os valores:
  - Endereço dos contratos.
  - ABIs dos contratos.
- Abra o arquivo no navegador com a Metamask conectada.

---

## 🧪 Casos de Teste

### ✅ Caso 1 – Emitir Certificado
- Emitir certificado para João da Silva no curso de Blockchain.
- Verificar os dados com ID `cert001`.

### ✅ Caso 2 – Verificação Pública
- Qualquer usuário pode verificar um certificado com ID único.

### ✅ Caso 3 – Recompensa com Token
- Recompensar carteira do aluno com 10 CTK.
- Verificar o saldo usando `balanceOf`.

---

## 📁 Estrutura

├── contracts/
│ ├── CertificateIssuer.sol
│ └── CertiToken.sol
├── index.html
└── README.md

---

## 👨‍🏫 Desenvolvido por

Gustavo Fontana & Leonardo Spilere.  
Curso de Ciência da Computação - UNESC

---

## 📝 Licença

Este projeto é de uso educacional e está licenciado sob a licença MIT.
