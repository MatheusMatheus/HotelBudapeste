
    create table Administrador (
       id bigint not null,
        email varchar(255),
        matricula varchar(255),
        nome varchar(255),
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Avaliacao (
       id bigint not null,
        avaliacao varchar(255),
        critica varchar(255),
        nota integer not null,
        primary key (id)
    ) engine=InnoDB

    create table Cidade (
       id bigint not null,
        latitude varchar(255),
        longitude varchar(255),
        nome varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Cidade_Estabelecimento (
       Cidade_id bigint not null,
        estabelecimentos_id bigint not null
    ) engine=InnoDB

    create table Comprador (
       dataNascimento date,
        email varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        id bigint not null,
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento (
       id bigint not null,
        cnpj varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        qtdQuartos integer not null,
        telefone varchar(255),
        tipo varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento_Avaliacao (
       Estabelecimento_id bigint not null,
        avaliacoes_id bigint not null
    ) engine=InnoDB

    create table Estabelecimento_comodidades (
       Estabelecimento_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Estabelecimento_Quarto (
       Estabelecimento_id bigint not null,
        quartosOcupados_id bigint not null,
        quartosDisponiveis_id bigint not null,
        quartos_id bigint not null
    ) engine=InnoDB

    create table hibernate_sequence (
       next_val bigint
    ) engine=InnoDB

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    create table Hospede (
       id bigint not null,
        cpf varchar(255),
        nome varchar(255),
        rg varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Login (
       id bigint not null,
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Quarto (
       id bigint not null,
        fotos longblob,
        ocupado bit not null,
        qtdCamas integer not null,
        solteiro bit not null,
        valorDiaria decimal(19,2),
        primary key (id)
    ) engine=InnoDB

    create table Quarto_comodidades (
       Quarto_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Reserva (
       id bigint not null,
        dataFinal date,
        dataInicial date,
        valorBase decimal(19,2),
        comprador_id bigint,
        quarto_id bigint,
        primary key (id)
    ) engine=InnoDB

    alter table Administrador 
       add constraint UK_nlq6i2fe9gdd58tjldv0178hf unique (login_id)

    alter table Cidade_Estabelecimento 
       add constraint UK_embcc1koy3bb5vhiw6qn6ge98 unique (estabelecimentos_id)

    alter table Comprador 
       add constraint UK_ljkcf1ijk0i31mfbdfbdg21h7 unique (login_id)

    alter table Estabelecimento_Avaliacao 
       add constraint UK_gxhh1dxd2fw9ln9rlywcjq96q unique (avaliacoes_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_2d13d3simr2gphbe1h9bonwg6 unique (quartosOcupados_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_s5n4u4qw4xxcxbgwwitp35auw unique (quartosDisponiveis_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_ccw5140016o2f7ib33ojgmw8t unique (quartos_id)

    alter table Administrador 
       add constraint FK3c8wuo48061rrp94c2pfhomio 
       foreign key (login_id) 
       references Login (id)

    alter table Cidade_Estabelecimento 
       add constraint FKlfigw1xi8i722f4sw1xo3bohi 
       foreign key (estabelecimentos_id) 
       references Estabelecimento (id)

    alter table Cidade_Estabelecimento 
       add constraint FK9cgxnr8em4engsi3hrpv8d29b 
       foreign key (Cidade_id) 
       references Cidade (id)

    alter table Comprador 
       add constraint FK9i9o3wogvwtgv6eiod06hcdmh 
       foreign key (login_id) 
       references Login (id)

    alter table Comprador 
       add constraint FK8sro3leayhq1u1l7vw21luwfq 
       foreign key (id) 
       references Hospede (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKm4h89hoxgo8divgig28dmhisv 
       foreign key (avaliacoes_id) 
       references Avaliacao (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKcuq4ck1royaa1bq4vvhkm054y 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_comodidades 
       add constraint FKs5ivi1eb3inhaobfyldcy5ib0 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKlw7bj4gmas72hj41qpp9tcw3a 
       foreign key (quartosOcupados_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKj41a76veb73mylhyuj9t2r8r1 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKa1vavlmx0p3c0iadi8w9ruwrn 
       foreign key (quartosDisponiveis_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKkmo9kjc0swhgn1dpe0ljm66e4 
       foreign key (quartos_id) 
       references Quarto (id)

    alter table Quarto_comodidades 
       add constraint FKbfr6ikht4ef6sylx9c912qq29 
       foreign key (Quarto_id) 
       references Quarto (id)

    alter table Reserva 
       add constraint FKhhc254qlalb23ynb0x5s2evf1 
       foreign key (comprador_id) 
       references Comprador (id)

    alter table Reserva 
       add constraint FKiydv7q77g8kada6095lspnbbt 
       foreign key (quarto_id) 
       references Quarto (id)

    create table Administrador (
       id bigint not null,
        email varchar(255),
        matricula varchar(255),
        nome varchar(255),
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Avaliacao (
       id bigint not null,
        avaliacao varchar(255),
        critica varchar(255),
        nota integer not null,
        primary key (id)
    ) engine=InnoDB

    create table Cidade (
       id bigint not null,
        latitude varchar(255),
        longitude varchar(255),
        nome varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Cidade_Estabelecimento (
       Cidade_id bigint not null,
        estabelecimentos_id bigint not null
    ) engine=InnoDB

    create table Comprador (
       dataNascimento date,
        email varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        id bigint not null,
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento (
       id bigint not null,
        cnpj varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        qtdQuartos integer not null,
        telefone varchar(255),
        tipo varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento_Avaliacao (
       Estabelecimento_id bigint not null,
        avaliacoes_id bigint not null
    ) engine=InnoDB

    create table Estabelecimento_comodidades (
       Estabelecimento_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Estabelecimento_Quarto (
       Estabelecimento_id bigint not null,
        quartosOcupados_id bigint not null,
        quartosDisponiveis_id bigint not null,
        quartos_id bigint not null
    ) engine=InnoDB

    create table hibernate_sequence (
       next_val bigint
    ) engine=InnoDB

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    create table Hospede (
       id bigint not null,
        cpf varchar(255),
        nome varchar(255),
        rg varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Login (
       id bigint not null,
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Quarto (
       id bigint not null,
        fotos longblob,
        ocupado bit not null,
        qtdCamas integer not null,
        solteiro bit not null,
        valorDiaria decimal(19,2),
        primary key (id)
    ) engine=InnoDB

    create table Quarto_comodidades (
       Quarto_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Reserva (
       id bigint not null,
        dataFinal date,
        dataInicial date,
        valorBase decimal(19,2),
        comprador_id bigint,
        quarto_id bigint,
        primary key (id)
    ) engine=InnoDB

    alter table Administrador 
       add constraint UK_nlq6i2fe9gdd58tjldv0178hf unique (login_id)

    alter table Cidade_Estabelecimento 
       add constraint UK_embcc1koy3bb5vhiw6qn6ge98 unique (estabelecimentos_id)

    alter table Comprador 
       add constraint UK_ljkcf1ijk0i31mfbdfbdg21h7 unique (login_id)

    alter table Estabelecimento_Avaliacao 
       add constraint UK_gxhh1dxd2fw9ln9rlywcjq96q unique (avaliacoes_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_2d13d3simr2gphbe1h9bonwg6 unique (quartosOcupados_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_s5n4u4qw4xxcxbgwwitp35auw unique (quartosDisponiveis_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_ccw5140016o2f7ib33ojgmw8t unique (quartos_id)

    alter table Administrador 
       add constraint FK3c8wuo48061rrp94c2pfhomio 
       foreign key (login_id) 
       references Login (id)

    alter table Cidade_Estabelecimento 
       add constraint FKlfigw1xi8i722f4sw1xo3bohi 
       foreign key (estabelecimentos_id) 
       references Estabelecimento (id)

    alter table Cidade_Estabelecimento 
       add constraint FK9cgxnr8em4engsi3hrpv8d29b 
       foreign key (Cidade_id) 
       references Cidade (id)

    alter table Comprador 
       add constraint FK9i9o3wogvwtgv6eiod06hcdmh 
       foreign key (login_id) 
       references Login (id)

    alter table Comprador 
       add constraint FK8sro3leayhq1u1l7vw21luwfq 
       foreign key (id) 
       references Hospede (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKm4h89hoxgo8divgig28dmhisv 
       foreign key (avaliacoes_id) 
       references Avaliacao (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKcuq4ck1royaa1bq4vvhkm054y 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_comodidades 
       add constraint FKs5ivi1eb3inhaobfyldcy5ib0 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKlw7bj4gmas72hj41qpp9tcw3a 
       foreign key (quartosOcupados_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKj41a76veb73mylhyuj9t2r8r1 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKa1vavlmx0p3c0iadi8w9ruwrn 
       foreign key (quartosDisponiveis_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKkmo9kjc0swhgn1dpe0ljm66e4 
       foreign key (quartos_id) 
       references Quarto (id)

    alter table Quarto_comodidades 
       add constraint FKbfr6ikht4ef6sylx9c912qq29 
       foreign key (Quarto_id) 
       references Quarto (id)

    alter table Reserva 
       add constraint FKhhc254qlalb23ynb0x5s2evf1 
       foreign key (comprador_id) 
       references Comprador (id)

    alter table Reserva 
       add constraint FKiydv7q77g8kada6095lspnbbt 
       foreign key (quarto_id) 
       references Quarto (id)

    create table Administrador (
       id bigint not null,
        email varchar(255),
        matricula varchar(255),
        nome varchar(255),
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Avaliacao (
       id bigint not null,
        avaliacao varchar(255),
        critica varchar(255),
        nota integer not null,
        primary key (id)
    ) engine=InnoDB

    create table Cidade (
       id bigint not null,
        latitude varchar(255),
        longitude varchar(255),
        nome varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Cidade_Estabelecimento (
       Cidade_id bigint not null,
        estabelecimentos_id bigint not null
    ) engine=InnoDB

    create table Comprador (
       dataNascimento date,
        email varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        id bigint not null,
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento (
       id bigint not null,
        cnpj varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        qtdQuartos integer not null,
        telefone varchar(255),
        tipo varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento_Avaliacao (
       Estabelecimento_id bigint not null,
        avaliacoes_id bigint not null
    ) engine=InnoDB

    create table Estabelecimento_comodidades (
       Estabelecimento_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Estabelecimento_Quarto (
       Estabelecimento_id bigint not null,
        quartosOcupados_id bigint not null,
        quartosDisponiveis_id bigint not null,
        quartos_id bigint not null
    ) engine=InnoDB

    create table hibernate_sequence (
       next_val bigint
    ) engine=InnoDB

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    create table Hospede (
       id bigint not null,
        cpf varchar(255),
        nome varchar(255),
        rg varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Login (
       id bigint not null,
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Quarto (
       id bigint not null,
        fotos longblob,
        ocupado bit not null,
        qtdCamas integer not null,
        solteiro bit not null,
        valorDiaria decimal(19,2),
        primary key (id)
    ) engine=InnoDB

    create table Quarto_comodidades (
       Quarto_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Reserva (
       id bigint not null,
        dataFinal date,
        dataInicial date,
        valorBase decimal(19,2),
        comprador_id bigint,
        quarto_id bigint,
        primary key (id)
    ) engine=InnoDB

    alter table Administrador 
       add constraint UK_nlq6i2fe9gdd58tjldv0178hf unique (login_id)

    alter table Cidade_Estabelecimento 
       add constraint UK_embcc1koy3bb5vhiw6qn6ge98 unique (estabelecimentos_id)

    alter table Comprador 
       add constraint UK_ljkcf1ijk0i31mfbdfbdg21h7 unique (login_id)

    alter table Estabelecimento_Avaliacao 
       add constraint UK_gxhh1dxd2fw9ln9rlywcjq96q unique (avaliacoes_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_2d13d3simr2gphbe1h9bonwg6 unique (quartosOcupados_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_s5n4u4qw4xxcxbgwwitp35auw unique (quartosDisponiveis_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_ccw5140016o2f7ib33ojgmw8t unique (quartos_id)

    alter table Administrador 
       add constraint FK3c8wuo48061rrp94c2pfhomio 
       foreign key (login_id) 
       references Login (id)

    alter table Cidade_Estabelecimento 
       add constraint FKlfigw1xi8i722f4sw1xo3bohi 
       foreign key (estabelecimentos_id) 
       references Estabelecimento (id)

    alter table Cidade_Estabelecimento 
       add constraint FK9cgxnr8em4engsi3hrpv8d29b 
       foreign key (Cidade_id) 
       references Cidade (id)

    alter table Comprador 
       add constraint FK9i9o3wogvwtgv6eiod06hcdmh 
       foreign key (login_id) 
       references Login (id)

    alter table Comprador 
       add constraint FK8sro3leayhq1u1l7vw21luwfq 
       foreign key (id) 
       references Hospede (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKm4h89hoxgo8divgig28dmhisv 
       foreign key (avaliacoes_id) 
       references Avaliacao (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKcuq4ck1royaa1bq4vvhkm054y 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_comodidades 
       add constraint FKs5ivi1eb3inhaobfyldcy5ib0 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKlw7bj4gmas72hj41qpp9tcw3a 
       foreign key (quartosOcupados_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKj41a76veb73mylhyuj9t2r8r1 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKa1vavlmx0p3c0iadi8w9ruwrn 
       foreign key (quartosDisponiveis_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKkmo9kjc0swhgn1dpe0ljm66e4 
       foreign key (quartos_id) 
       references Quarto (id)

    alter table Quarto_comodidades 
       add constraint FKbfr6ikht4ef6sylx9c912qq29 
       foreign key (Quarto_id) 
       references Quarto (id)

    alter table Reserva 
       add constraint FKhhc254qlalb23ynb0x5s2evf1 
       foreign key (comprador_id) 
       references Comprador (id)

    alter table Reserva 
       add constraint FKiydv7q77g8kada6095lspnbbt 
       foreign key (quarto_id) 
       references Quarto (id)

    create table Administrador (
       id bigint not null,
        email varchar(255),
        matricula varchar(255),
        nome varchar(255),
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Avaliacao (
       id bigint not null,
        avaliacao varchar(255),
        critica varchar(255),
        nota integer not null,
        primary key (id)
    ) engine=InnoDB

    create table Cidade (
       id bigint not null,
        latitude varchar(255),
        longitude varchar(255),
        nome varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Cidade_Estabelecimento (
       Cidade_id bigint not null,
        estabelecimentos_id bigint not null
    ) engine=InnoDB

    create table Comprador (
       dataNascimento date,
        email varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        id bigint not null,
        login_id bigint not null,
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento (
       id bigint not null,
        cnpj varchar(255),
        cep varchar(255),
        latitude varchar(255),
        logradouro varchar(255),
        longitude varchar(255),
        numero integer not null,
        qtdQuartos integer not null,
        telefone varchar(255),
        tipo varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Estabelecimento_Avaliacao (
       Estabelecimento_id bigint not null,
        avaliacoes_id bigint not null
    ) engine=InnoDB

    create table Estabelecimento_comodidades (
       Estabelecimento_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Estabelecimento_Quarto (
       Estabelecimento_id bigint not null,
        quartosOcupados_id bigint not null,
        quartosDisponiveis_id bigint not null,
        quartos_id bigint not null
    ) engine=InnoDB

    create table hibernate_sequence (
       next_val bigint
    ) engine=InnoDB

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    insert into hibernate_sequence values ( 1 )

    create table Hospede (
       id bigint not null,
        cpf varchar(255),
        nome varchar(255),
        rg varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Login (
       id bigint not null,
        senha varchar(255),
        usuario varchar(255),
        primary key (id)
    ) engine=InnoDB

    create table Quarto (
       id bigint not null,
        fotos longblob,
        ocupado bit not null,
        qtdCamas integer not null,
        solteiro bit not null,
        valorDiaria decimal(19,2),
        primary key (id)
    ) engine=InnoDB

    create table Quarto_comodidades (
       Quarto_id bigint not null,
        comodidades integer
    ) engine=InnoDB

    create table Reserva (
       id bigint not null,
        dataFinal date,
        dataInicial date,
        valorBase decimal(19,2),
        comprador_id bigint,
        quarto_id bigint,
        primary key (id)
    ) engine=InnoDB

    alter table Administrador 
       add constraint UK_nlq6i2fe9gdd58tjldv0178hf unique (login_id)

    alter table Cidade_Estabelecimento 
       add constraint UK_embcc1koy3bb5vhiw6qn6ge98 unique (estabelecimentos_id)

    alter table Comprador 
       add constraint UK_ljkcf1ijk0i31mfbdfbdg21h7 unique (login_id)

    alter table Estabelecimento_Avaliacao 
       add constraint UK_gxhh1dxd2fw9ln9rlywcjq96q unique (avaliacoes_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_2d13d3simr2gphbe1h9bonwg6 unique (quartosOcupados_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_s5n4u4qw4xxcxbgwwitp35auw unique (quartosDisponiveis_id)

    alter table Estabelecimento_Quarto 
       add constraint UK_ccw5140016o2f7ib33ojgmw8t unique (quartos_id)

    alter table Administrador 
       add constraint FK3c8wuo48061rrp94c2pfhomio 
       foreign key (login_id) 
       references Login (id)

    alter table Cidade_Estabelecimento 
       add constraint FKlfigw1xi8i722f4sw1xo3bohi 
       foreign key (estabelecimentos_id) 
       references Estabelecimento (id)

    alter table Cidade_Estabelecimento 
       add constraint FK9cgxnr8em4engsi3hrpv8d29b 
       foreign key (Cidade_id) 
       references Cidade (id)

    alter table Comprador 
       add constraint FK9i9o3wogvwtgv6eiod06hcdmh 
       foreign key (login_id) 
       references Login (id)

    alter table Comprador 
       add constraint FK8sro3leayhq1u1l7vw21luwfq 
       foreign key (id) 
       references Hospede (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKm4h89hoxgo8divgig28dmhisv 
       foreign key (avaliacoes_id) 
       references Avaliacao (id)

    alter table Estabelecimento_Avaliacao 
       add constraint FKcuq4ck1royaa1bq4vvhkm054y 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_comodidades 
       add constraint FKs5ivi1eb3inhaobfyldcy5ib0 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKlw7bj4gmas72hj41qpp9tcw3a 
       foreign key (quartosOcupados_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKj41a76veb73mylhyuj9t2r8r1 
       foreign key (Estabelecimento_id) 
       references Estabelecimento (id)

    alter table Estabelecimento_Quarto 
       add constraint FKa1vavlmx0p3c0iadi8w9ruwrn 
       foreign key (quartosDisponiveis_id) 
       references Quarto (id)

    alter table Estabelecimento_Quarto 
       add constraint FKkmo9kjc0swhgn1dpe0ljm66e4 
       foreign key (quartos_id) 
       references Quarto (id)

    alter table Quarto_comodidades 
       add constraint FKbfr6ikht4ef6sylx9c912qq29 
       foreign key (Quarto_id) 
       references Quarto (id)

    alter table Reserva 
       add constraint FKhhc254qlalb23ynb0x5s2evf1 
       foreign key (comprador_id) 
       references Comprador (id)

    alter table Reserva 
       add constraint FKiydv7q77g8kada6095lspnbbt 
       foreign key (quarto_id) 
       references Quarto (id)
