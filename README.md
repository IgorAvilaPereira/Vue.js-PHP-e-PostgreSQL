# Vue.js-PHP-e-PostgreSQL

Aplicação CRUD (Criar, Ler, Atualizar, Deletar) utilizando o Vue.js no frontend, PHP no backend e PostgreSQL como sistema de gerenciamento de banco de dados.

---

### 🛠️ Funcionalidades principais

* **Cadastro de registros**: Permite criar novos registros no banco de dados.
* **Leitura de registros**: Exibe os registros existentes no banco de dados.
* **Edição de registros**: Oferece a possibilidade de editar registros existentes.
* **Exclusão de registros**: Permite excluir registros do banco de dados.

---

### 🔧 Tecnologias utilizadas

* **Frontend**: Vue.js
* **Backend**: PHP
* **Banco de dados**: PostgreSQL

---

### 📁 Estrutura do repositório

O repositório contém os seguintes arquivos principais:

* `index.html`: Página principal da aplicação.
* `listar.php`: Script PHP para listar registros.
* `adicionar.php`: Script PHP para adicionar novos registros.
* `alterar.php`: Script PHP para editar registros existentes.
* `excluir.php`: Script PHP para excluir registros.
* `dump.sql`: Arquivo SQL com o esquema do banco de dados.
* `comandos.txt`: Arquivo com instruções para execução do projeto.
* `start.sh`: Script para inicializar o ambiente de desenvolvimento.

---

### 🚀 Como utilizar

1. **Instalação de dependências**:

   No terminal, instale o Node.js e o NPM:

   ```bash
   sudo apt install nodejs
   sudo apt install npm
   ```



Instale o Vue CLI globalmente:

```bash
npm install -g @vue/cli
```



2. **Configuração do banco de dados**:

   Importe o arquivo `dump.sql` no PostgreSQL para criar o esquema do banco de dados.

3. **Execução da aplicação**:

   Siga as instruções no arquivo `comandos.txt` para executar a aplicação.
