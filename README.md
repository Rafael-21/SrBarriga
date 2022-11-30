# Desafio - RobotFrameWork

**Descrição:** Uma automação web utilizando robotframework. Realiza testes e2e em uma aplição web chamada SeuBarriga. Utilizando python, desenvolvi com as seguintes librarys SeleniumLibrary e FakerLibrary. 


#### **Como executar o projeto:**
Baixe o Python e instale: [Python](https://www.python.org/downloads/)

Baixe a SeleniumLibrary: [SeleniumLibrary](https://robotframework.org/SeleniumLibrary/)

Baixe o FakerLibrary: [FakerLibrary](https://pypi.org/project/robotframework-faker/)

Comando de execução de todos os testes: `robot -d results ./tests/`


#### **Mapa de testes:**
**Suíte: Login**
CT01 - Realizar login com credenciais validas (Crítico) {Automatizado}
CT02 - Realizar login com credenciais invalidas (Moderado) {Automatizado}
CT03 - Realizar login sem preencher campos obrigatórios (Crítico) {Automatizado}

**Suíte: Register**
CT01 - Cadastrar novo usuario com credenciais validas (Crítico) {Automatizado}
CT02 - Cadastrar novo usuario com credenciais ja utilizadas (Moderado) {Automatizado}
CT03 - Cadastrar novo usuario sem preencher campos obrigatórios (Crítico)  {Manual}
{Manual}

**Suíte: Account**
CT01 - Criar conta com credenciais validas (Crítico) {Manual}
CT02 - Criar conta com credenciais inválidas (Moderado) {Manual}
CT03 - Realizar edição em conta (Baixo) {Manual}
CT04 - Realizar exclusão de conta (Moderado) {Manual}

**Suíte: Movements**
CT01 - Criar movimentação do tipo Receita e Pago (Crítico) {Manual}
CT02 - Criar movimentação do tipo Receita e Pendente (Crítico) {Manual}
CT03 - Criar movimentação do tipo Despesa e Pago (Crítico) {Manual}
CT04 - Criar movimentação do tipo Despesa e Pendente (Crítico) {Manual}

**Suíte: Monthly overview**
CT01 - Buscar por movimentações no mês atual (Crítico) {Manual}
CT02 - Excluir movimentção (Moderado) {Manual}
