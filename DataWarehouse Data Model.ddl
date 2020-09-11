-- Gerado por Oracle SQL Developer Data Modeler 19.2.0.182.1216
--   em:        2020-09-11 10:33:41 BRT
--   site:      Oracle Database 12cR2
--   tipo:      Oracle Database 12cR2



CREATE TABLE dw_funcesp.d_bi_columns (
    id_column       NUMBER(10) NOT NULL,
    id_system       NUMBER(10) NOT NULL,
    id_owner        NUMBER(10) NOT NULL,
    id_table        NUMBER(10) NOT NULL,
    nr_column       NUMBER(10) NOT NULL,
    nm_column       VARCHAR2(100) NOT NULL,
    ds_column       VARCHAR2(1000) NOT NULL,
    tp_column       VARCHAR2(100) NOT NULL,
    ic_null         VARCHAR2(3) NOT NULL,
    ic_index        VARCHAR2(3) NOT NULL,
    ic_primarykey   VARCHAR2(3) NOT NULL,
    qt_caracteres   NUMBER(10) NOT NULL,
    qt_decimais     NUMBER(3) NOT NULL,
    lindata         DATE NOT NULL,
    linorigem       VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_columns IS
    'Dimensão com as colunas das tabelas';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.id_column IS
    'Chave Sequencial';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.id_table IS
    'Identificador da tabela';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.nr_column IS
    'Codigo da coluna da tabela correspondente ao campo COLUMN_ID do core Oracle';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.nm_column IS
    'Nome da coluna da tabela correspondente ao campo COLUMN_NAME do core Oracle';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.ds_column IS
    'Descrição longa da coluna da tabela correspondente ao campo COMMENTS do core Oracle';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.tp_column IS
    'Tipo da coluna correspondente ao campo DATA_TYPE';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.ic_null IS
    'Indicador se o campo pode conter valor nulo, identificado através de query nas tablelas ALL_CONS_COLUMNS e ALL_CONSTRAINTS';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.ic_index IS
    'Indicador se o campo faz parte de um indice (único ou não), identificado por query na tabela ALL_INDEXES';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.ic_primarykey IS
    'Indicador se o campo faz parte de um índice principal e único, identificado por query na tablela ALL_INDEXES';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.qt_caracteres IS
    'Quantidade de caracteres total da coluna';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.qt_decimais IS
    'Quantidade de decimais da coluna se for numérica';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_columns.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_columns_pk ON
    dw_funcesp.d_bi_columns (
        id_column
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_columns_un ON
    dw_funcesp.d_bi_columns (
        id_table
    ASC,
        nr_column
    ASC );

ALTER TABLE dw_funcesp.d_bi_columns ADD CONSTRAINT d_bi_columns_pk PRIMARY KEY ( id_column );

CREATE TABLE dw_funcesp.d_bi_constraints (
    id_constraint   NUMBER(10) NOT NULL,
    id_system       NUMBER(10) NOT NULL,
    id_owner        NUMBER(10) NOT NULL,
    id_table        NUMBER(10) NOT NULL,
    nm_constraint   VARCHAR2(100) NOT NULL,
    cd_status       VARCHAR2(50) NOT NULL,
    lindata         DATE NOT NULL,
    linorigem       VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_constraints IS
    'Dimensão com as regras de consistências';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.id_constraint IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.id_table IS
    'Identificador da tablea';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.nm_constraint IS
    'Nome da consistência';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.cd_status IS
    'Situação da consistência';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_constraints.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_constraints_pk ON
    dw_funcesp.d_bi_constraints (
        id_constraint
    ASC );

CREATE INDEX dw_funcesp.d_bi_constraints_un ON
    dw_funcesp.d_bi_constraints (
        id_table
    ASC,
        nm_constraint
    ASC );

ALTER TABLE dw_funcesp.d_bi_constraints ADD CONSTRAINT d_bi_constraints_pk PRIMARY KEY ( id_constraint );

CREATE TABLE dw_funcesp.d_bi_environments (
    id_environment      NUMBER(10) NOT NULL,
    cd_environment      VARCHAR2(15) NOT NULL,
    nm_environment      VARCHAR2(100) NOT NULL,
    tp_environment      VARCHAR2(15) NOT NULL,
    nm_server           VARCHAR2(100) NOT NULL,
    ds_specifications   VARCHAR2(1000) NOT NULL,
    nm_user             VARCHAR2(100) NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_environments IS
    'Dimensão que mantém as informações de ambientes gerenciados no sistema.';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.id_environment IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.cd_environment IS
    'Código único para identificar o ambiente';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.nm_environment IS
    'Nome do ambiente de desenvolvimento';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.tp_environment IS
    'Tipo do ambiente no que refere a proposição de promoção de versão, o domínio dessa informação pode ser DEV (desenvolvimento), HML (homologação) e PRD (produção), opcionalmente pode-se adotar também TST (teste) e PPR (pré-produção)'
    ;

COMMENT ON COLUMN dw_funcesp.d_bi_environments.nm_server IS
    'Nome do servidor em que o ambiente está instalado';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.ds_specifications IS
    'Especificações para conexão do servidor';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.nm_user IS
    'Nome do usuário que é utilizado para acessar o ambiente';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_environments.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_environments_un ON
    dw_funcesp.d_bi_environments (
        cd_environment
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_environments_pk ON
    dw_funcesp.d_bi_environments (
        id_environment
    ASC );

ALTER TABLE dw_funcesp.d_bi_environments ADD CONSTRAINT d_bi_environments_pk PRIMARY KEY ( id_environment );

CREATE TABLE dw_funcesp.d_bi_functions (
    id_function         NUMBER(10) NOT NULL,
    id_environment      NUMBER(10) NOT NULL,
    id_system           NUMBER(10) NOT NULL,
    id_owner            NUMBER(10) NOT NULL,
    cd_function         VARCHAR2(100) NOT NULL,
    nm_function         VARCHAR2(500) NOT NULL,
    tp_function         VARCHAR2(50) NOT NULL,
    nm_aplicabilidade   VARCHAR2(50 BYTE) NOT NULL,
    nm_system_origem    VARCHAR2(100) NOT NULL,
    cd_status           VARCHAR2(20) NOT NULL,
    tp_carga            VARCHAR2(20) NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_functions IS
    'Dimensão com as funções do BI';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.id_function IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.id_environment IS
    'Identificador do ambiente';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.id_owner IS
    'identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.cd_function IS
    'Código da procedure corresponde ao campo OBJECT_ID da tabela ALL_OBJECTS';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.nm_function IS
    'Descrição/Objetivo/Finalidade/Observações sobre a procedure';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.tp_function IS
    'Tipo: procedimento, função ou pacote. ';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.nm_aplicabilidade IS
    'Determina a camada de destino dos dados, podendo ser: Stage, Datawarehouse, Datamart, Cubo, etc.';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.nm_system_origem IS
    'Definição da origem de carga.';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.cd_status IS
    'Mostra se estã Valido ou invãlido.';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.tp_carga IS
    'Define o tipo da carga, podendo ser Purge-Full, Update-Full, Increment, Manual, Controled by Rule, etc';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_functions.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_functions_pk ON
    dw_funcesp.d_bi_functions (
        id_function
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_functions_un ON
    dw_funcesp.d_bi_functions (
        id_owner
    ASC,
        cd_function
    ASC );

ALTER TABLE dw_funcesp.d_bi_functions ADD CONSTRAINT d_bi_functions PRIMARY KEY ( id_function );

CREATE TABLE dw_funcesp.d_bi_indexes (
    id_index        NUMBER(10) NOT NULL,
    id_system       NUMBER(10) NOT NULL,
    id_owner        NUMBER(10) NOT NULL,
    id_table        NUMBER(10) NOT NULL,
    nm_index        VARCHAR2(100) NOT NULL,
    tp_index        VARCHAR2(50) NOT NULL,
    nr_index        NUMBER(1) NOT NULL,
    ic_primarykey   VARCHAR2(3) NOT NULL,
    ic_unique       VARCHAR2(3) NOT NULL,
    cd_status       VARCHAR2(50) NOT NULL,
    lindata         DATE NOT NULL,
    linorigem       VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_indexes IS
    'Dimensão com os índices das tabelas';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.id_index IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.id_table IS
    'Identificador da tablea';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.nm_index IS
    'Nome do índice';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.tp_index IS
    'Tipo do índice';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.nr_index IS
    'Número do índice, se for um índice do tipo PK deve ser 0, se no final do nome do índice tiverum número assume esse número ou assume o próximo número buscando nos índices já carregados'
    ;

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.ic_primarykey IS
    'Indicativo se o índice refere-se a uma chave primária';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.ic_unique IS
    'Indicativo se o índice refere-se a uma chave única';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.cd_status IS
    'Situação do indice';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_indexes.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_indexes_pk ON
    dw_funcesp.d_bi_indexes (
        id_index
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_indexes_un ON
    dw_funcesp.d_bi_indexes (
        id_table
    ASC,
        nm_index
    ASC );

ALTER TABLE dw_funcesp.d_bi_indexes ADD CONSTRAINT d_bi_indexes_pk PRIMARY KEY ( id_index );

CREATE TABLE dw_funcesp.d_bi_jobschedules (
    id_jobschedule         NUMBER(10) NOT NULL,
    id_system              NUMBER(10) NOT NULL,
    id_owner               NUMBER(10) NOT NULL,
    nm_job                 VARCHAR2(100) NOT NULL,
    ds_job                 VARCHAR2(1000) NOT NULL,
    dt_nextstart           DATE NOT NULL,
    dt_start               DATE NOT NULL,
    dt_laststart           DATE NOT NULL,
    hr_lastrunduration     INTERVAL DAY TO SECOND NOT NULL,
    ds_periodicidade       VARCHAR2(200) NOT NULL,
    dd_periodicidade       VARCHAR2(200) NOT NULL,
    hr_periodicidade       VARCHAR2(20) NOT NULL,
    tp_jobstyle            VARCHAR2(17) NOT NULL,
    tp_job                 VARCHAR2(16) NOT NULL,
    nm_jobaction           VARCHAR2(200) NOT NULL,
    nm_schedule            VARCHAR2(200) NOT NULL,
    tp_schedule            VARCHAR2(15 BYTE) NOT NULL,
    nm_jobclass            VARCHAR2(100) NOT NULL,
    ic_enabled             VARCHAR2(3) NOT NULL,
    ic_restartonrecovery   VARCHAR2(3) NOT NULL,
    tp_jobstate            VARCHAR2(20) NOT NULL,
    ic_restartonfailure    VARCHAR2(3) NOT NULL,
    ic_restartable         VARCHAR2(3) NOT NULL,
    nr_jobpriority         NUMBER(3) NOT NULL,
    lindata                DATE NOT NULL,
    linorigem              VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_jobschedules IS
    'Dimensão com os agendamentos dos pacotes';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.id_jobschedule IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.id_system IS
    'Identificação do Sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.id_owner IS
    'Identificação do Owner';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.nm_job IS
    'Nome do processo';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ds_job IS
    'Observações ou comentários do conjunto de procedimentos (job).';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.dt_nextstart IS
    'Data e Hora da úliima execução do conunto de procedimentos.';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.dt_start IS
    'Data de cadastro e início do agendamento';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.dt_laststart IS
    'Data e Hora da úliima execução do conunto de procedimentos.';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.hr_lastrunduration IS
    'Tempo de execução do conjunto de procedimentos (job).';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ds_periodicidade IS
    'Nome do agendamento';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.dd_periodicidade IS
    'Informação  do agendamento no que tange aos dias de agendamento (Dom,Seg,Ter,Qua,Qui,Sex,Sab)';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.hr_periodicidade IS
    'Informação  do agendamento no que tange ao horário de execução';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.tp_jobstyle IS
    'Estilo do processo  (Regular)';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.tp_job IS
    'Tipo do processo  (Stored_Procedure)';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.nm_jobaction IS
    'Ação ou nome do processo a ser executado';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.nm_schedule IS
    'Nome do agendamento';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.tp_schedule IS
    'Tipo do agendamento (Calendar)';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.nm_jobclass IS
    'Classe do processo (Default/Padrão)';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ic_enabled IS
    'Indicativo de está ativo';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ic_restartonrecovery IS
    'Indicativo se reinicia no caso de recuperação de erro';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.tp_jobstate IS
    'Situação do processo';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ic_restartonfailure IS
    'Indicativo se reinicia em caso de erro';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.ic_restartable IS
    'Indicativo se o job pode ser reiniciado.';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.nr_jobpriority IS
    'Prioridade do processo';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_jobschedules.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_schedule_pk ON
    dw_funcesp.d_bi_jobschedules (
        id_jobschedule
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_schedule_un ON
    dw_funcesp.d_bi_jobschedules (
        id_owner
    ASC,
        nm_job
    ASC );

ALTER TABLE dw_funcesp.d_bi_jobschedules ADD CONSTRAINT d_bi_schedule_pk PRIMARY KEY ( id_jobschedule );

CREATE TABLE dw_funcesp.d_bi_logs (
    id_log           NUMBER(10) NOT NULL,
    id_parentlog     NUMBER(10),
    id_environment   NUMBER(10) NOT NULL,
    id_system        NUMBER(10) NOT NULL,
    id_owner         NUMBER(10) NOT NULL,
    id_procedure     NUMBER(10) NOT NULL,
    id_jobschedule   NUMBER(10) NOT NULL,
    cd_log           NUMBER(10) NOT NULL,
    cd_parentlog     NUMBER(10),
    nm_user          VARCHAR2(50) NOT NULL,
    dt_timestart     DATE NOT NULL,
    dt_timeend       DATE NOT NULL,
    hr_elapsedtime   INTERVAL DAY TO SECOND NOT NULL,
    ds_status        VARCHAR2(20) NOT NULL,
    nm_stage         VARCHAR2(20) NOT NULL,
    ds_log           VARCHAR2(500) NOT NULL,
    lindata          DATE NOT NULL,
    linorigem        VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_logs IS
    'Dimensção de log do BI, para guardar a execução que os objetos são exeutados e as informações sobre cada objeto executado';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_log IS
    'Identificador do log';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_parentlog IS
    'Identificador pai do log';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_environment IS
    'Identificador do ambiente que o objeto foi executado';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_owner IS
    'Identificador do ownner';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_procedure IS
    'Identificador da procedure';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.id_jobschedule IS
    'Identificador do job';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.cd_log IS
    'Código do log, o mesmo que o campo "ID_LOG" referente a tabela do data stage';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.cd_parentlog IS
    'Código do log, o mesmo que o campo "ID_PARENTLOG" referente a tabela do data stage';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.nm_user IS
    'Nome do usuário que executou o objeto no log';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.dt_timestart IS
    'Data e hora de inicio que o objeto começou';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.dt_timeend IS
    'Data e hora final que o objeto terminou';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.hr_elapsedtime IS
    'Tempo que o objeto levou para ser executado, entre a subtração da data de inicio para o fim';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.ds_status IS
    'Descrição se o objeto foi executado com êxito ou erro';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.nm_stage IS
    'Nome do estágio que o objeto está sendo executado, se é no DS ou no DW';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.ds_log IS
    'Descrição sobre o objeto que está sendo executado';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_logs.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_logs_pk ON
    dw_funcesp.d_bi_logs (
        id_log
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_logs_un ON
    dw_funcesp.d_bi_logs (
        dt_timestart
    ASC,
        cd_log
    ASC );

ALTER TABLE dw_funcesp.d_bi_logs ADD CONSTRAINT d_bi_logs_pk PRIMARY KEY ( id_log );

CREATE TABLE dw_funcesp.d_bi_owners (
    id_owner    NUMBER(10) NOT NULL,
    cd_owner    VARCHAR2(100) NOT NULL,
    nm_owner    VARCHAR2(100) NOT NULL,
    nm_perfil   VARCHAR2(100) NOT NULL,
    ds_owner    VARCHAR2(1000) NOT NULL,
    lindata     DATE NOT NULL,
    linorigem   VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_owners IS
    'Dimensão com os proprietários dos objetos';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.id_owner IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.cd_owner IS
    'Nome do Owner correspondente ao campo REFERENCED_OWNER da tabela DBA_DEPENDENCIES. Foi utilizado essa tabela, pois o BI utiliza owner de diversas fontes além do DS e DW.'
    ;

COMMENT ON COLUMN dw_funcesp.d_bi_owners.nm_owner IS
    'Descrição da utilização do owner, vindo do Sharepoint.';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.nm_perfil IS
    'Nome do perfil de segurança de acesso';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.ds_owner IS
    'Descrição ou comentário';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_owners.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_owners_pk ON
    dw_funcesp.d_bi_owners (
        id_owner
    ASC );

CREATE INDEX dw_funcesp.d_bi_owners_un ON
    dw_funcesp.d_bi_owners (
        cd_owner
    ASC );

ALTER TABLE dw_funcesp.d_bi_owners ADD CONSTRAINT d_bi_owners_pk PRIMARY KEY ( id_owner );

CREATE TABLE dw_funcesp.d_bi_packages (
    id_package          NUMBER(10) NOT NULL,
    id_system           NUMBER(10) NOT NULL,
    id_owner            NUMBER(10) NOT NULL,
    id_jobschedule      NUMBER(10) NOT NULL,
    cd_package          VARCHAR2(100) NOT NULL,
    nm_package          VARCHAR2(100) NOT NULL,
    tp_package          VARCHAR2(100) NOT NULL,
    nm_aplicabilidade   VARCHAR2(100 BYTE) NOT NULL,
    cd_status           VARCHAR2(20) NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_packages IS
    'Dimensão com os pacotes de procedimentos';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.id_package IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.id_owner IS
    'identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.id_jobschedule IS
    'identificador do processo';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.cd_package IS
    'Código do pacote pertencente ao campo OBJECT_ID';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.nm_package IS
    'Nome do pacote onde possui as procedures internamente, pertencente ao campo OBJECT_NAME';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.tp_package IS
    'Tipo do pacote, pertencente ao campo OBJECT_TYPE';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.nm_aplicabilidade IS
    'Aplicabilidade do pacote, como por exemplo DS, DW, BI, etc.';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.cd_status IS
    'Status do pacote, se está válido ou inválido pertencente ao campo STATUS';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_packages.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_packages_pk ON
    dw_funcesp.d_bi_packages (
        id_package
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_packages_un ON
    dw_funcesp.d_bi_packages (
        id_owner
    ASC,
        nm_package
    ASC );

ALTER TABLE dw_funcesp.d_bi_packages ADD CONSTRAINT d_bi_packages_pk PRIMARY KEY ( id_package );

CREATE TABLE dw_funcesp.d_bi_procedures (
    id_procedure        NUMBER(10) NOT NULL,
    id_environment      NUMBER(10) NOT NULL,
    id_system           NUMBER(10) NOT NULL,
    id_owner            NUMBER(10) NOT NULL,
    cd_procedure        VARCHAR2(100) NOT NULL,
    nm_procedure        VARCHAR2(500) NOT NULL,
    tp_procedure        VARCHAR2(50) NOT NULL,
    nm_aplicabilidade   VARCHAR2(50 BYTE) NOT NULL,
    nm_system_origem    VARCHAR2(100) NOT NULL,
    cd_status           VARCHAR2(20) NOT NULL,
    tp_carga            VARCHAR2(20) NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_procedures IS
    'Dimensão com os procedimentos';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.id_procedure IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.id_environment IS
    'Identificador do ambiente';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.id_owner IS
    'identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.cd_procedure IS
    'Código da procedure corresponde ao campo OBJECT_ID da tabela ALL_OBJECTS';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.nm_procedure IS
    'Descrição/Objetivo/Finalidade/Observações sobre a procedure';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.tp_procedure IS
    'Tipo: procedimento, função ou pacote. ';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.nm_aplicabilidade IS
    'Determina a camada de destino dos dados, podendo ser: Stage, Datawarehouse, Datamart, Cubo, etc.';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.nm_system_origem IS
    'Definição da origem de carga.';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.cd_status IS
    'Mostra se estã Valido ou invãlido.';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.tp_carga IS
    'Define o tipo da carga, podendo ser Purge-Full, Update-Full, Increment, Manual, Controled by Rule, etc';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_procedures.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_procedures_pk ON
    dw_funcesp.d_bi_procedures (
        id_procedure
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_procedures_un ON
    dw_funcesp.d_bi_procedures (
        id_owner
    ASC,
        nm_procedure
    ASC );

ALTER TABLE dw_funcesp.d_bi_procedures ADD CONSTRAINT d_bi_procedures_pk PRIMARY KEY ( id_procedure );

CREATE TABLE dw_funcesp.d_bi_relcolumnconstraint (
    id_relcolumnconstraint   NUMBER(10) NOT NULL,
    id_column                NUMBER(10) NOT NULL,
    id_constraint            NUMBER(10) NOT NULL,
    lindata                  DATE NOT NULL,
    linorigem                VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_relcolumnconstraint IS
    'Dimensão que faz a relação entre as colunas das tabelas e regras  de consistências';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnconstraint.id_relcolumnconstraint IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnconstraint.id_column IS
    'Identificador da coluna da tabela';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnconstraint.id_constraint IS
    'Identificador da consistência';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnconstraint.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnconstraint.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_relcolumnconstraint_pk ON
    dw_funcesp.d_bi_relcolumnconstraint (
        id_relcolumnconstraint
    ASC );

ALTER TABLE dw_funcesp.d_bi_relcolumnconstraint ADD CONSTRAINT d_bi_relcolumnconstraint_pk PRIMARY KEY ( id_relcolumnconstraint )
;

CREATE TABLE dw_funcesp.d_bi_relcolumnindex (
    id_relcolumnindex   NUMBER(10) NOT NULL,
    id_column           NUMBER(10) NOT NULL,
    id_index            NUMBER(10) NOT NULL,
    nr_column_index     NUMBER(2) NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_relcolumnindex IS
    'Dimensão com a relação entre as colunas das tabelas e os índices das tabelas';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.id_relcolumnindex IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.id_column IS
    'Identificador da coluna da tabela';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.id_index IS
    'Identificador do indice da tabela';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.nr_column_index IS
    'Número do posicionamento da coluna da tabela dentro do incide';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_relcolumnindex.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_relcolumnindex_pk ON
    dw_funcesp.d_bi_relcolumnindex (
        id_relcolumnindex
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_relcolumnindex_un ON
    dw_funcesp.d_bi_relcolumnindex (
        id_column
    ASC,
        id_index
    ASC );

ALTER TABLE dw_funcesp.d_bi_relcolumnindex ADD CONSTRAINT d_bi_relcolumnindex_pk PRIMARY KEY ( id_relcolumnindex );

CREATE TABLE dw_funcesp.d_bi_systems (
    id_system            NUMBER(10) NOT NULL,
    cd_sigla             VARCHAR2(2) NOT NULL,
    nm_system            VARCHAR2(100) NOT NULL,
    ds_system            VARCHAR2(1000) NOT NULL,
    nm_arearesponsavel   VARCHAR2(100) NOT NULL,
    nm_origem            VARCHAR2(100) NOT NULL,
    nm_servidor          VARCHAR2(100) NOT NULL,
    tp_carga             VARCHAR2(100) NOT NULL,
    lindata              DATE NOT NULL,
    linorigem            VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_systems IS
    'Dimensão com os sitemas implementados no BI';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.id_system IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.cd_sigla IS
    'Mneumonico que identifica o sistema.';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.nm_system IS
    'Nome por extenso do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.ds_system IS
    'Descrição longa do nome do sistema, especificar o seu objetivo, detalhando a finalidade de uso do sistema.';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.nm_arearesponsavel IS
    'Nome da área responsável';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.nm_origem IS
    'Especificar o ambiente da origem principal do sistema, como por exemplo Oracle para o Protheus, MS-SQL-Server, Download da internet, etc'
    ;

COMMENT ON COLUMN dw_funcesp.d_bi_systems.nm_servidor IS
    'Servidor de origem ou a conexão ou ainda a URL para a busca da informação no sistema origem.';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.tp_carga IS
    'Descrição do esforço de carga para as tabelas do STG, DW, DM';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_systems.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_systems_pk ON
    dw_funcesp.d_bi_systems (
        id_system
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_systems_un ON
    dw_funcesp.d_bi_systems (
        cd_sigla
    ASC );

ALTER TABLE dw_funcesp.d_bi_systems ADD CONSTRAINT d_bi_systems_pk PRIMARY KEY ( id_system );

CREATE TABLE dw_funcesp.d_bi_tables (
    id_table          NUMBER(10) NOT NULL,
    id_system         NUMBER(10) NOT NULL,
    id_owner          NUMBER(10) NOT NULL,
    nm_table          VARCHAR2(100) NOT NULL,
    ds_table          VARCHAR2(1000) NOT NULL,
    tp_table          VARCHAR2(15) NOT NULL,
    cd_status         VARCHAR2(15) NOT NULL,
    ic_particionado   VARCHAR2(3) NOT NULL,
    lindata           DATE NOT NULL,
    linorigem         VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.d_bi_tables IS
    'Dimensão com as tabelas';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.id_table IS
    'Chave sequencial automática';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.nm_table IS
    'Nome da tabela referente ao campo TABLE_NAME';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.ds_table IS
    'Descrição detalhada e observações da tabela';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.tp_table IS
    'Tipo Table ou View';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.cd_status IS
    'Status da tabela, se está válida ou inválida referente ao campo STATUS';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.ic_particionado IS
    'Indica se esta tabela está particionada. Defina como "SIM"  se estiver particionado';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.d_bi_tables.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.d_bi_tables_pk ON
    dw_funcesp.d_bi_tables (
        id_table
    ASC );

CREATE UNIQUE INDEX dw_funcesp.d_bi_tables_un ON
    dw_funcesp.d_bi_tables (
        id_owner
    ASC,
        nm_table
    ASC );

ALTER TABLE dw_funcesp.d_bi_tables ADD CONSTRAINT d_bi_tables_pk PRIMARY KEY ( id_table );

CREATE TABLE dw_funcesp.d_data (
    data            DATE NOT NULL,
    ano             CHAR(4 CHAR) NOT NULL,
    mes             CHAR(2 CHAR) NOT NULL,
    dia             CHAR(2 CHAR) NOT NULL,
    semestre        CHAR(2 CHAR) NOT NULL,
    quadrimestre    CHAR(2 CHAR) NOT NULL,
    trimestre       CHAR(2 CHAR) NOT NULL,
    bimestre        CHAR(2 CHAR) NOT NULL,
    competencia     CHAR(7 CHAR) NOT NULL,
    diasemana       NUMBER(3) NOT NULL,
    nomediasemana   VARCHAR2(20 CHAR) NOT NULL,
    nomemes         VARCHAR2(20 CHAR) NOT NULL,
    finaldesemana   CHAR(1 CHAR) DEFAULT 'N' NOT NULL,
    feriado         CHAR(1 CHAR) DEFAULT 'N' NOT NULL
);

CREATE UNIQUE INDEX dw_funcesp.pk_d_data ON
    dw_funcesp.d_data (
        data
    ASC );

ALTER TABLE dw_funcesp.d_data ADD CONSTRAINT pk_d_data PRIMARY KEY ( data );

CREATE TABLE dw_funcesp.d_feriados (
    data             DATE NOT NULL,
    ano              CHAR(4 CHAR) NOT NULL,
    mes              CHAR(2 CHAR) NOT NULL,
    dia              CHAR(2 CHAR) NOT NULL,
    diasemana        VARCHAR2(20 CHAR) NOT NULL,
    descricao        VARCHAR2(100 CHAR) NOT NULL,
    tp_abrangencia   CHAR(1 CHAR) NOT NULL
);

CREATE UNIQUE INDEX dw_funcesp.d_feriados_pk ON
    dw_funcesp.d_feriados (
        data
    ASC );

ALTER TABLE dw_funcesp.d_feriados ADD CONSTRAINT d_feriados_pk PRIMARY KEY ( data );

CREATE TABLE dw_funcesp.f_bi_columns_details (
    dt_detail          DATE NOT NULL,
    id_owner           NUMBER(10) NOT NULL,
    id_table           NUMBER(10) NOT NULL,
    id_column          NUMBER(10) NOT NULL,
    id_system          NUMBER(10) NOT NULL,
    qt_medcaracteres   NUMBER(10) DEFAULT 0 NOT NULL,
    qt_naoinformado    NUMBER(10) NOT NULL,
    qt_naoencontrado   NUMBER(10) NOT NULL,
    qt_columns         NUMBER(5) DEFAULT 1 NOT NULL,
    lindata            DATE NOT NULL,
    linorigem          VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_columns_details IS
    'Fato das métricas das colunas das tabelas';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.dt_detail IS
    'Data do registro da ocorrência do detalhe da coluna';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.id_owner IS
    'Identificador do proprietãrio';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.id_table IS
    'Identificador da  tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.id_column IS
    'Identificador da coluna da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.qt_medcaracteres IS
    'Quantidade média de caracteres da coluna';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.qt_naoinformado IS
    'Quantidade de registros com conteúdo "Não Informado" devido ao campo ser obrigatório e não ter conteúdo';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.qt_naoencontrado IS
    'Quantidade de registros com conteúdo "Não Encontrado" devido ao conteúdo não estar cadastrado na dimensão';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.qt_columns IS
    'Quantidade de colunas, para possibilitar soma de registros, irá conter sempre a quantidade 1 que é o menor grão.';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_columns_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_columns_details_pk ON
    dw_funcesp.f_bi_columns_details (
        dt_detail
    ASC,
        id_owner
    ASC,
        id_table
    ASC,
        id_column
    ASC );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT f_bi_columns_details_pk PRIMARY KEY ( dt_detail,
                                                         id_owner,
                                                         id_table,
                                                         id_column );

CREATE TABLE dw_funcesp.f_bi_jobschedules_details (
    dt_detail        DATE NOT NULL,
    id_system        NUMBER(10) NOT NULL,
    id_owner         NUMBER(10) NOT NULL,
    id_jobschedule   NUMBER(10) NOT NULL,
    qt_jobs          NUMBER(10) NOT NULL,
    qt_arguments     NUMBER(10) NOT NULL,
    qt_run           NUMBER(10) NOT NULL,
    qt_failure       NUMBER(10) NOT NULL,
    qt_retry         NUMBER(10) NOT NULL,
    lindata          DATE NOT NULL,
    linorigem        VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_jobschedules_details IS
    'Fato dos jobs agendados';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.dt_detail IS
    'Data do registro da ocorrência do detalhe';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.id_owner IS
    'Identificador do proprietario';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.id_jobschedule IS
    'Identificador do job';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.qt_jobs IS
    'Quantidade de jobs agendados no Oracle';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.qt_arguments IS
    'Quantidade de argumentos';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.qt_run IS
    'Contador de execuções';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.qt_failure IS
    'Contador de falhas';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.qt_retry IS
    'Contador de tentativas';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_jobschedules_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_jobschedules_details_pk ON
    dw_funcesp.f_bi_jobschedules_details (
        dt_detail
    ASC,
        id_owner
    ASC,
        id_jobschedule
    ASC );

ALTER TABLE dw_funcesp.f_bi_jobschedules_details
    ADD CONSTRAINT f_bi_jobschedules_details_pk PRIMARY KEY ( dt_detail,
                                                              id_owner,
                                                              id_jobschedule );

CREATE TABLE dw_funcesp.f_bi_logs_details (
    dt_log           DATE NOT NULL,
    hr_start         VARCHAR2(8) NOT NULL,
    id_log           NUMBER(10) NOT NULL,
    id_environment   NUMBER(10) NOT NULL,
    id_system        NUMBER(10) NOT NULL,
    id_owner         NUMBER(10) NOT NULL,
    id_procedure     NUMBER(10) NOT NULL,
    id_jobschedule   NUMBER(10) NOT NULL,
    qt_timesecs      NUMBER(10, 2) NOT NULL,
    qt_recsinsert    NUMBER(10) NOT NULL,
    qt_recsupdate    NUMBER(10) NOT NULL,
    qt_recstotal     NUMBER(10) NOT NULL,
    qt_recsdelete    NUMBER(10) NOT NULL,
    qt_recswarning   NUMBER(10) NOT NULL,
    qt_errors        NUMBER(1) NOT NULL,
    qt_success       NUMBER(1) NOT NULL,
    qt_jobs          NUMBER(1) NOT NULL,
    qt_logs          NUMBER(1) NOT NULL,
    lindata          DATE NOT NULL,
    linorigem        VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_logs_details IS
    'Fato das métricas das execuções dos agendamentos e processos';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.dt_log IS
    'Data do registro da ocorrência do procedimento';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.hr_start IS
    'Identificador do horario que iniciou a ocorrencia do Log';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_log IS
    'Identificador do log';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_environment IS
    'Identificador do ambiente';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_procedure IS
    'Identificador do procedimento';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.id_jobschedule IS
    'Identificador do job';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_timesecs IS
    'Quantidade em segudos que o objeto levou para ser executado';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_recsinsert IS
    'Quantidade de registros que foram inseridos com determinada procedure';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_recsupdate IS
    'Quantidade de registros que foram atualizados com determinada procedure';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_recstotal IS
    'Quantidade de registros que deveriam ser carregados ou atualizados com determinada procedure';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_recsdelete IS
    'Quantidade de registros que foram deletados  com determinada procedure';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_recswarning IS
    'Quantidade de registros que foram atualizados com determinada procedure';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_errors IS
    'Quantidade de processos que resultaram em erro, como o menor nível grão é o de procedure, então o conteúdo é sempre 1, quando terminar com erro'
    ;

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_success IS
    'Quantidade de processos que resultaram em sucesso, como o menor nível grão é o de procedure, então o conteúdo é sempre 1, quando terminar com sucesso'
    ;

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_jobs IS
    'Quantidade de jobs que já foram executados, se o identificador for encontrado, o valor é 1';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.qt_logs IS
    'Quantidade de procedure, como esse é o nível grão, terá conteúdo como 1';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_logs_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_logs_details_pk ON
    dw_funcesp.f_bi_logs_details (
        dt_log
    ASC,
        hr_start
    ASC,
        id_log
    ASC );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_details_pk PRIMARY KEY ( dt_log,
                                                      hr_start,
                                                      id_log );

CREATE TABLE dw_funcesp.f_bi_owners_details (
    dt_detail           DATE NOT NULL,
    id_owner            NUMBER(10) NOT NULL,
    qt_objetos          NUMBER(10) DEFAULT 0 NOT NULL,
    qt_dados            NUMBER(10) DEFAULT 0 NOT NULL,
    qt_naoinformado     NUMBER(10) DEFAULT 0 NOT NULL,
    qt_naoencontrado    NUMBER(10) DEFAULT 0 NOT NULL,
    qt_execucoestotal   NUMBER(10) DEFAULT 0 NOT NULL,
    qt_execucoeserro    NUMBER(10) DEFAULT 0 NOT NULL,
    qt_owners           NUMBER(5) DEFAULT 1 NOT NULL,
    lindata             DATE NOT NULL,
    linorigem           VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_owners_details IS
    'Fato das métricas dos proprietários';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.dt_detail IS
    'Data do registro da ocorrência do detalhe da proprietário';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_objetos IS
    'Quantidade de objetos total que o Owner possui, como tabelas, indices, etc.';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_dados IS
    'Quantidade de dados (colunas gerenciadas x linhas) da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_naoinformado IS
    'Quantidade de registros com conteúdo "Não Informado" devido ao campo ser obrigatório e não ter conteúdo';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_naoencontrado IS
    'Quantidade de registros com conteúdo "Não Encontrado" devido ao conteúdo não estar cadastrado na dimensão';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_execucoestotal IS
    'Quantidade total de execuções de procedures no dia';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_execucoeserro IS
    'O tamanho em MB da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.qt_owners IS
    'Quantidade de proprietários, para possibilitar soma, irá conter sempre a quantidade 1 que é o menor grão.';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_owners_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_owners_details_pk ON
    dw_funcesp.f_bi_owners_details (
        dt_detail
    ASC,
        id_owner
    ASC );

ALTER TABLE dw_funcesp.f_bi_owners_details ADD CONSTRAINT f_bi_owners_details_pk PRIMARY KEY ( dt_detail,
                                                                                               id_owner );

CREATE TABLE dw_funcesp.f_bi_packages_details (
    dt_detail        DATE NOT NULL,
    id_system        NUMBER(10) NOT NULL,
    id_owner         NUMBER(10) NOT NULL,
    id_jobschedule   NUMBER(10) NOT NULL,
    id_package       NUMBER(10) NOT NULL,
    qt_packages      NUMBER(10) NOT NULL,
    lindata          DATE NOT NULL,
    linorigem        VARCHAR2(50) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_packages_details IS
    'Fato sobre todas as packages disponiveis no BI';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.dt_detail IS
    'Data do detalhe que foi inserida na fato';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.id_owner IS
    'Identificador do proprietário do banco';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.id_jobschedule IS
    'Identificador do job';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.id_package IS
    'Identificador da package';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.qt_packages IS
    'Quantidade de package';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_packages_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_packages_details_pk ON
    dw_funcesp.f_bi_packages_details (
        dt_detail
    ASC,
        id_package
    ASC );

ALTER TABLE dw_funcesp.f_bi_packages_details ADD CONSTRAINT f_bi_packages_details_pk PRIMARY KEY ( dt_detail,
                                                                                                   id_package );

CREATE TABLE dw_funcesp.f_bi_procedures_details (
    dt_detail        DATE NOT NULL,
    id_environment   NUMBER(10) NOT NULL,
    id_system        NUMBER(10) NOT NULL,
    id_owner         NUMBER(10) NOT NULL,
    id_procedure     NUMBER(10) NOT NULL,
    qt_procedures    NUMBER(10) NOT NULL,
    lindata          DATE NOT NULL,
    linorigem        VARCHAR2(50) NOT NULL
);

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.dt_detail IS
    'Data do registro da ocorrência do detalhe dos processos (procedures)';

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.id_environment IS
    'Identificador do ambiente que o processo é executado';

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.id_owner IS
    'Identificador do propritetário';

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.id_procedure IS
    'Identificador do processos (procedures)';

COMMENT ON COLUMN dw_funcesp.f_bi_procedures_details.qt_procedures IS
    'Quantidade de processos (procedures)';

CREATE UNIQUE INDEX dw_funcesp.f_bi_procedures_details_pk ON
    dw_funcesp.f_bi_procedures_details (
        dt_detail
    ASC,
        id_owner
    ASC,
        id_procedure
    ASC );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_bi_procedures_details_pk PRIMARY KEY ( id_owner,
                                                            id_procedure,
                                                            dt_detail );

CREATE TABLE dw_funcesp.f_bi_tables_details (
    dt_detail              DATE NOT NULL,
    id_owner               NUMBER(10) NOT NULL,
    id_table               NUMBER(10) NOT NULL,
    id_system              NUMBER(10) NOT NULL,
    nr_tamanhototallinha   NUMBER(10) DEFAULT 0 NOT NULL,
    nr_tamanhomediolinha   NUMBER(10) DEFAULT 0 NOT NULL,
    qt_colunas             NUMBER(10) DEFAULT 0 NOT NULL,
    qt_linhas              NUMBER(10) DEFAULT 0 NOT NULL,
    qt_dados               NUMBER(10) DEFAULT 0 NOT NULL,
    qt_discob              NUMBER(30, 2) DEFAULT 0 NOT NULL,
    qt_discokb             NUMBER(30, 3) DEFAULT 0 NOT NULL,
    qt_discomb             NUMBER(30, 4) DEFAULT 0 NOT NULL,
    qt_discogb             NUMBER(30, 6) DEFAULT 0 NOT NULL,
    qt_discotb             NUMBER(30, 9) DEFAULT 0 NOT NULL,
    qt_naoinformado        NUMBER(10) DEFAULT 0 NOT NULL,
    qt_naoencontrado       NUMBER(10) DEFAULT 0 NOT NULL,
    qt_tables              NUMBER(5) DEFAULT 1 NOT NULL,
    lindata                DATE NOT NULL,
    linorigem              VARCHAR2(100) NOT NULL
);

COMMENT ON TABLE dw_funcesp.f_bi_tables_details IS
    'Fato das métricas das tabelas';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.dt_detail IS
    'Data do registro da ocorrência do detalhe da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.id_owner IS
    'Identificador do proprietário';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.id_table IS
    'Identificador da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.id_system IS
    'Identificador do sistema';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.nr_tamanhototallinha IS
    'Tamanho  total de caracteres na linha (registro), obtido pela soma de caracteres das colunas (campos)';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.nr_tamanhomediolinha IS
    'Tamanho médio de caracteres na linha (registro)';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_colunas IS
    'Quantidade de colunas da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_linhas IS
    'Quantidade de registros na tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_dados IS
    'Quantidade de dados (colunas gerenciadas x linhas) da tabela';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_discob IS
    'O tamanho em byes da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_discokb IS
    'O tamanho em KB da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_discomb IS
    'O tamanho em MB da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_discogb IS
    'O tamanho em GB da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_discotb IS
    'O tamanho em TB da tabela em disco';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_naoinformado IS
    'Quantidade de registros com conteúdo "Não Informado" devido ao campo ser obrigatório e não ter conteúdo';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_naoencontrado IS
    'Quantidade de registros com conteúdo "Não Encontrado" devido ao conteúdo não estar cadastrado na dimensão';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.qt_tables IS
    'Quantidade de tabelas, para possibilitar soma, irá conter sempre a quantidade 1 que é o menor grão
.
';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.lindata IS
    'Data de atualização do registro';

COMMENT ON COLUMN dw_funcesp.f_bi_tables_details.linorigem IS
    'Origem da informação gravado no registro';

CREATE UNIQUE INDEX dw_funcesp.f_bi_tables_details_pk ON
    dw_funcesp.f_bi_tables_details (
        dt_detail
    ASC,
        id_owner
    ASC,
        id_table
    ASC );

ALTER TABLE dw_funcesp.f_bi_tables_details
    ADD CONSTRAINT f_bi_tables_details_pk PRIMARY KEY ( dt_detail,
                                                        id_owner,
                                                        id_table );

ALTER TABLE dw_funcesp.d_bi_functions
    ADD CONSTRAINT d_bi_functions_d_bi_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_functions
    ADD CONSTRAINT d_bi_functions_d_bi_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_logs
    ADD CONSTRAINT d_bi_logs_d_bi_environments_fk FOREIGN KEY ( id_environment )
        REFERENCES dw_funcesp.d_bi_environments ( id_environment );

ALTER TABLE dw_funcesp.d_bi_logs
    ADD CONSTRAINT d_bi_logs_d_bi_jobschedules_fk FOREIGN KEY ( id_jobschedule )
        REFERENCES dw_funcesp.d_bi_jobschedules ( id_jobschedule );

ALTER TABLE dw_funcesp.d_bi_logs
    ADD CONSTRAINT d_bi_logs_d_bi_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_logs
    ADD CONSTRAINT d_bi_logs_d_bi_procedures_fk FOREIGN KEY ( id_procedure )
        REFERENCES dw_funcesp.d_bi_procedures ( id_procedure );

ALTER TABLE dw_funcesp.d_bi_logs
    ADD CONSTRAINT d_bi_logs_d_bi_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_relcolumnconstraint
    ADD CONSTRAINT d_columns_d_columnconstraint FOREIGN KEY ( id_column )
        REFERENCES dw_funcesp.d_bi_columns ( id_column );

ALTER TABLE dw_funcesp.d_bi_relcolumnindex
    ADD CONSTRAINT d_columns_d_columnindex FOREIGN KEY ( id_column )
        REFERENCES dw_funcesp.d_bi_columns ( id_column );

ALTER TABLE dw_funcesp.d_bi_columns
    ADD CONSTRAINT d_columns_d_owners FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_columns
    ADD CONSTRAINT d_columns_d_systems FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT d_columns_f_columns_det FOREIGN KEY ( id_column )
        REFERENCES dw_funcesp.d_bi_columns ( id_column );

ALTER TABLE dw_funcesp.d_bi_relcolumnconstraint
    ADD CONSTRAINT d_constr_d_columnconstraint FOREIGN KEY ( id_constraint )
        REFERENCES dw_funcesp.d_bi_constraints ( id_constraint );

ALTER TABLE dw_funcesp.d_bi_constraints
    ADD CONSTRAINT d_constraints_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_constraints
    ADD CONSTRAINT d_constraints_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_feriados
    ADD CONSTRAINT d_data_d_feriados FOREIGN KEY ( data )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.d_bi_functions
    ADD CONSTRAINT d_functions_d_environments_fk FOREIGN KEY ( id_environment )
        REFERENCES dw_funcesp.d_bi_environments ( id_environment );

ALTER TABLE dw_funcesp.d_bi_relcolumnindex
    ADD CONSTRAINT d_indexes_d_columnindex FOREIGN KEY ( id_index )
        REFERENCES dw_funcesp.d_bi_indexes ( id_index );

ALTER TABLE dw_funcesp.d_bi_indexes
    ADD CONSTRAINT d_indexes_d_owners FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_indexes
    ADD CONSTRAINT d_indexes_d_systems FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_packages
    ADD CONSTRAINT d_jobschedules_d_packages FOREIGN KEY ( id_jobschedule )
        REFERENCES dw_funcesp.d_bi_jobschedules ( id_jobschedule );

ALTER TABLE dw_funcesp.d_bi_jobschedules
    ADD CONSTRAINT d_owners_d_jobschedules FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_packages
    ADD CONSTRAINT d_owners_d_pacotes FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_procedures
    ADD CONSTRAINT d_owners_d_procedures FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_tables
    ADD CONSTRAINT d_owners_d_tables FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.d_bi_procedures
    ADD CONSTRAINT d_procedures_d_environm_fk FOREIGN KEY ( id_environment )
        REFERENCES dw_funcesp.d_bi_environments ( id_environment );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT d_procedures_f_log FOREIGN KEY ( id_procedure )
        REFERENCES dw_funcesp.d_bi_procedures ( id_procedure );

ALTER TABLE dw_funcesp.d_bi_jobschedules
    ADD CONSTRAINT d_systems_d_jobschedules FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_packages
    ADD CONSTRAINT d_systems_d_packages FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_procedures
    ADD CONSTRAINT d_systems_d_procedures FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_tables
    ADD CONSTRAINT d_systems_d_tables FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.d_bi_columns
    ADD CONSTRAINT d_tables_d_columns FOREIGN KEY ( id_table )
        REFERENCES dw_funcesp.d_bi_tables ( id_table );

ALTER TABLE dw_funcesp.d_bi_constraints
    ADD CONSTRAINT d_tables_d_constraints FOREIGN KEY ( id_table )
        REFERENCES dw_funcesp.d_bi_tables ( id_table );

ALTER TABLE dw_funcesp.d_bi_indexes
    ADD CONSTRAINT d_tables_d_indexes FOREIGN KEY ( id_table )
        REFERENCES dw_funcesp.d_bi_tables ( id_table );

ALTER TABLE dw_funcesp.f_bi_tables_details
    ADD CONSTRAINT d_tables_f_tables_det FOREIGN KEY ( id_table )
        REFERENCES dw_funcesp.d_bi_tables ( id_table );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_d_bi_jobschedules_fk FOREIGN KEY ( id_jobschedule )
        REFERENCES dw_funcesp.d_bi_jobschedules ( id_jobschedule );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_d_bi_log_fk FOREIGN KEY ( id_log )
        REFERENCES dw_funcesp.d_bi_logs ( id_log );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_detail_d_environm_fk FOREIGN KEY ( id_environment )
        REFERENCES dw_funcesp.d_bi_environments ( id_environment );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_details_d_data_fk FOREIGN KEY ( dt_log )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_details_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_logs_details
    ADD CONSTRAINT f_bi_logs_details_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT f_columns_det_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT f_columns_details_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT f_columns_details_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_columns_details
    ADD CONSTRAINT f_columns_details_d_tables_fk FOREIGN KEY ( id_table )
        REFERENCES dw_funcesp.d_bi_tables ( id_table );

ALTER TABLE dw_funcesp.f_bi_jobschedules_details
    ADD CONSTRAINT f_jobschedules_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_jobschedules_details
    ADD CONSTRAINT f_jobschedules_d_jobschedules FOREIGN KEY ( id_jobschedule )
        REFERENCES dw_funcesp.d_bi_jobschedules ( id_jobschedule );

ALTER TABLE dw_funcesp.f_bi_jobschedules_details
    ADD CONSTRAINT f_jobschedules_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_jobschedules_details
    ADD CONSTRAINT f_jobschedules_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_owners_details
    ADD CONSTRAINT f_owners_det_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_owners_details
    ADD CONSTRAINT f_owners_details_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_packages_details
    ADD CONSTRAINT f_packages_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_packages_details
    ADD CONSTRAINT f_packages_d_jobschedules_fk FOREIGN KEY ( id_jobschedule )
        REFERENCES dw_funcesp.d_bi_jobschedules ( id_jobschedule );

ALTER TABLE dw_funcesp.f_bi_packages_details
    ADD CONSTRAINT f_packages_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_packages_details
    ADD CONSTRAINT f_packages_d_packages_fk FOREIGN KEY ( id_package )
        REFERENCES dw_funcesp.d_bi_packages ( id_package );

ALTER TABLE dw_funcesp.f_bi_packages_details
    ADD CONSTRAINT f_packages_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_procedures_d_bi_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_procedures_d_bi_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_procedures_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_procedures_d_environments_fk FOREIGN KEY ( id_environment )
        REFERENCES dw_funcesp.d_bi_environments ( id_environment );

ALTER TABLE dw_funcesp.f_bi_procedures_details
    ADD CONSTRAINT f_procedures_d_procedures_fk FOREIGN KEY ( id_procedure )
        REFERENCES dw_funcesp.d_bi_procedures ( id_procedure );

ALTER TABLE dw_funcesp.f_bi_tables_details
    ADD CONSTRAINT f_tables_det_d_data_fk FOREIGN KEY ( dt_detail )
        REFERENCES dw_funcesp.d_data ( data );

ALTER TABLE dw_funcesp.f_bi_tables_details
    ADD CONSTRAINT f_tables_details_d_owners_fk FOREIGN KEY ( id_owner )
        REFERENCES dw_funcesp.d_bi_owners ( id_owner );

ALTER TABLE dw_funcesp.f_bi_tables_details
    ADD CONSTRAINT f_tables_details_d_systems_fk FOREIGN KEY ( id_system )
        REFERENCES dw_funcesp.d_bi_systems ( id_system );

CREATE SEQUENCE dw_funcesp.d_bi_columns_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_columns_trg BEFORE
    INSERT ON dw_funcesp.d_bi_columns
    FOR EACH ROW
    WHEN ( new.id_column IS NULL )
BEGIN
    :new.id_column := dw_funcesp.d_bi_columns_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_constraints_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_constraints_trg BEFORE
    INSERT ON dw_funcesp.d_bi_constraints
    FOR EACH ROW
    WHEN ( new.id_constraint IS NULL )
BEGIN
    :new.id_constraint := dw_funcesp.d_bi_constraints_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_environments_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_environments_trg BEFORE
    INSERT ON dw_funcesp.d_bi_environments
    FOR EACH ROW
    WHEN ( new.id_environment IS NULL )
BEGIN
    :new.id_environment := dw_funcesp.d_bi_environments_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_functions_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_functions_trg BEFORE
    INSERT ON dw_funcesp.d_bi_functions
    FOR EACH ROW
    WHEN ( new.id_function IS NULL )
BEGIN
    :new.id_function := dw_funcesp.d_bi_functions_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_indexes_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_indexes_trg BEFORE
    INSERT ON dw_funcesp.d_bi_indexes
    FOR EACH ROW
    WHEN ( new.id_index IS NULL )
BEGIN
    :new.id_index := dw_funcesp.d_bi_indexes_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_jobschedules_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_jobschedules_trg BEFORE
    INSERT ON dw_funcesp.d_bi_jobschedules
    FOR EACH ROW
    WHEN ( new.id_jobschedule IS NULL )
BEGIN
    :new.id_jobschedule := dw_funcesp.d_bi_jobschedules_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_logs_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_logs_trg BEFORE
    INSERT ON dw_funcesp.d_bi_logs
    FOR EACH ROW
    WHEN ( new.id_log IS NULL )
BEGIN
    :new.id_log := dw_funcesp.d_bi_logs_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_owners_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_owners_trg BEFORE
    INSERT ON dw_funcesp.d_bi_owners
    FOR EACH ROW
    WHEN ( new.id_owner IS NULL )
BEGIN
    :new.id_owner := dw_funcesp.d_bi_owners_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_packages_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_packages_trg BEFORE
    INSERT ON dw_funcesp.d_bi_packages
    FOR EACH ROW
    WHEN ( new.id_package IS NULL )
BEGIN
    :new.id_package := dw_funcesp.d_bi_packages_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_procedures_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_procedures_trg BEFORE
    INSERT ON dw_funcesp.d_bi_procedures
    FOR EACH ROW
    WHEN ( new.id_procedure IS NULL )
BEGIN
    :new.id_procedure := dw_funcesp.d_bi_procedures_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_columnconstraint_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_columnconstraint_trg BEFORE
    INSERT ON dw_funcesp.d_bi_relcolumnconstraint
    FOR EACH ROW
    WHEN ( new.id_relcolumnconstraint IS NULL )
BEGIN
    :new.id_relcolumnconstraint := dw_funcesp.d_bi_columnconstraint_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_columnindex_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_columnindex_trg BEFORE
    INSERT ON dw_funcesp.d_bi_relcolumnindex
    FOR EACH ROW
    WHEN ( new.id_relcolumnindex IS NULL )
BEGIN
    :new.id_relcolumnindex := dw_funcesp.d_bi_columnindex_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_systems_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_systems_trg BEFORE
    INSERT ON dw_funcesp.d_bi_systems
    FOR EACH ROW
    WHEN ( new.id_system IS NULL )
BEGIN
    :new.id_system := dw_funcesp.d_bi_systems_seq.nextval;
END;
/

CREATE SEQUENCE dw_funcesp.d_bi_tables_seq START WITH 1 NOCACHE ORDER;

CREATE OR REPLACE TRIGGER dw_funcesp.d_bi_tables_trg BEFORE
    INSERT ON dw_funcesp.d_bi_tables
    FOR EACH ROW
    WHEN ( new.id_table IS NULL )
BEGIN
    :new.id_table := dw_funcesp.d_bi_tables_seq.nextval;
END;
/



-- Relatório do Resumo do Oracle SQL Developer Data Modeler: 
-- 
-- CREATE TABLE                            23
-- CREATE INDEX                            36
-- ALTER TABLE                             87
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                          14
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                         14
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
