# *Shell* scripts
Scripts facilitadores diversos *(shell, etc.)*

## Gerenciamento de Serviços
Scripts para gerenciamento de Serviços do Windows *(start/stop)*

### Serviços do ERP ***TOTVS | Protheus***
Scripts para iniciar e parar os serviços do ambiente do sistema Protheus conforme ordem de dependência

- [`Protheus-START.bat`](Protheus-START.bat) - Inicializar serviços relacionados;
- [`Protheus-STOP.bat`](Protheus-STOP.bat) - Parar serviços relacionados;

> **NOTA!** Para correta execução o script deve ser executado com privilégio administrativo - *"Executar como Administrador"*.

***Serviços gerenciados TOTVS Protheus***

Interdependência dos Serviços

- *Inicialização* - segue ordem de dependência
- *Parada* - segue na ordem inversa

Ordem de serviços manipulados:

1. *SGBD* - *Microsoft* **SQL Server**
2. *Licenças* - **TOTVS | License Server Virtual**
3. *Acesso a dados (BD)* - **TOTVS | DBAccess**
4. *ERP* - **TOTVS | Protheus** *(appserver)*

***Referência e Download***

Sites para documentação de referência e downloads de serviços

![*Microsoft*](https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31 "Microsoft")

- Microsoft | Data Plataform - [**Downloads do SQL Server**][MSSQL]
- Microsoft Docs | [**SQL Server Management Studio** *(SSMS)*][SSMS]

![TOTVS /// class=tdn-logo](https://tdn.engpro.totvs.com.br/download/attachments/327682/atl.site.logo?version=2&modificationDate=1533936917000&api=v2 "TDN - TOTVS Developer Network")

> *TDN - TOTVS Developer Network* - **Documentação Técnica**

- [**Plataforma homologada dos produtos**][HOMOLOGADO]
  > `https://tdn.totvs.com/x/MQW-Ag`
- [**TOTVS | DBAccess**][DBACCESS] - [*TOTVSTEC - TDN*][TOTVSTEC]
  - [Sistemas operacionais homologados][DBACCESS-SO]
  - [Bancos de dados homologados][DBACCESS-BD]
- [**TOTVS | Application Server** *(Lobo Guará)*][APPSERVER-SO] - Sistema operacional homologado
- [**TOTVS License Server Virtual**][LSVirtual] - [*Frameworksp - TDN*][FRAMEWORK]

---

[MSSQL]: https://www.microsoft.com/pt-br/sql-server/sql-server-downloads "Experimente o SQL Server na infraestrutura local ou na nuvem"
[SSMS]: https://docs.microsoft.com/pt-br/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver15 "Baixar o SQL Server Management Studio (SSMS) - SQL Server Management Studio (SSMS) | Microsoft Docs"
[HOMOLOGADO]: https://tdn.totvs.com/display/tec/Plataforma+homologada+dos+produtos
[FRAMEWORK]: https://tdn.engpro.totvs.com.br/display/framework/Framework
[TOTVSTEC]: https://tdn.engpro.totvs.com.br/display/tec/Home "https://tdn.totvs.com/x/6IJc"
[LSVirtual]: https://tdn.engpro.totvs.com.br/display/framework/TOTVS+License+Server+Virtual "https://tdn.totvs.com/x/lPKRDg"
[DBACCESS]: https://tdn.engpro.totvs.com.br/display/tec/DBAccess "https://tdn.totvs.com/x/SIlc"
[DBACCESS-SO]: https://tdn.totvs.com/display/tec/DBAccess+-+Sistemas+operacionais
[DBACCESS-BD]: https://tdn.totvs.com/display/tec/DBAccess+-+Banco+de+dados
[APPSERVER-SO]: https://tdn.totvs.com/pages/viewpage.action?pageId=452690307 "Sistema operacional homologado para o TOTVS | Application Server Lobo Guará"
