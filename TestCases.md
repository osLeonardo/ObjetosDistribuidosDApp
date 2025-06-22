## ✅ Casos de Teste

### 🧪 Caso de Teste 1 – Emissão de Certificado (Fluxo do Administrador)

**Objetivo:**  
Verificar se o administrador consegue emitir corretamente um certificado para um aluno.

**Dados de entrada:**
- **ID do Certificado:** `cert001`
- **Nome do Aluno:** João da Silva
- **Curso:** Blockchain Básico
- **Data de Emissão:** 11/06/2025
- **Carteira do Aluno:** `0xAbc123...`

**Passos:**
1. Acesse a interface Web do DApp.
2. Preencha todos os campos do formulário de emissão.
3. Clique em **Emitir Certificado**.

**Resultado Esperado:**
- Transação é confirmada na Metamask.
- Certificado `cert001` é registrado na blockchain.

**Verificação:**
- Use o ID `cert001` na função de verificação.
- Deve retornar os dados corretos do aluno e curso.

---

### 🧪 Caso de Teste 2 – Verificação Pública de Certificado

**Objetivo:**  
Permitir que qualquer pessoa verifique a autenticidade de um certificado emitido.

**Dados de entrada:**
- **ID do Certificado:** `cert001`

**Passos:**
1. Acesse a interface Web do DApp.
2. No campo de verificação, insira `cert001`.
3. Clique em **Verificar**.

**Resultado Esperado:**
- Exibe:
```json
{
  "aluno": "João da Silva",
  "curso": "Blockchain Básico",
  "dataEmissao": "11/06/2025",
  "wallet": "0xAbc123...",
  "valido": true
}
