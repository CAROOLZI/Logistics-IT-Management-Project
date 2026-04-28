-- Projeto Integrado: Gestão de Logística de Alimentos e Ativos de TI
-- Focado em padrões SQL aprendidos na Oracle Academy e Fundação Bradesco

CREATE TABLE tb_ativos_ti (
    id_ativo SERIAL PRIMARY KEY,
    nome_equipamento VARCHAR(100) NOT NULL, -- Ex: Coletor de Dados, Servidor
    status_manutencao VARCHAR(20) DEFAULT 'Ativo',
    data_ultima_revisao DATE
);

CREATE TABLE tb_logistica_agro (
    id_entrega SERIAL PRIMARY KEY,
    categoria_alimento VARCHAR(50), -- Ex: Grãos, Laticínios
    peso_carga_kg DECIMAL(10,2),
    veiculo_modelo VARCHAR(50), -- Ex: Fiat Toro, Chevrolet S10
    status_entrega VARCHAR(20) DEFAULT 'Pendente'
);

-- Dados iniciais para demonstração
INSERT INTO tb_ativos_ti (nome_equipamento, status_manutencao) VALUES ('Coletor Zebra HC20', 'Ativo');
INSERT INTO tb_logistica_agro (categoria_alimento, peso_carga_kg, veiculo_modelo) VALUES ('Grãos', 950.00, 'Fiat Toro');
