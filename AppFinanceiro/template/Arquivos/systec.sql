-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 13-Set-2019 às 01:56
-- Versão do servidor: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `systec`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `backup`
--

CREATE TABLE `backup` (
  `id` int(11) NOT NULL,
  `data` date NOT NULL,
  `funcionario` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `backup`
--

INSERT INTO `backup` (`id`, `data`, `funcionario`) VALUES
(5, '2019-08-28', 'Hugo Vasconcelos'),
(6, '2019-08-29', 'Hugo Vasconcelos');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargos`
--

CREATE TABLE `cargos` (
  `id` int(11) NOT NULL,
  `cargo` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargos`
--

INSERT INTO `cargos` (`id`, `cargo`) VALUES
(1, 'FuncionÃ¡rio'),
(2, 'Administrador'),
(3, 'Gerente'),
(4, 'Tesoureiro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL,
  `nome` varchar(20) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`id`, `nome`, `telefone`, `endereco`, `email`, `cpf`, `data`) VALUES
(3, 'Hugo Vasconcelos', '31975275084', 'Rua 8', 'hugovasconcelosf@hotmail.com', '555', '2019-08-13'),
(4, 'Marcos Pedro', '3197555555', 'Rua 9', 'marcos@hotmail.com', '555.555.555-55', '2019-08-13'),
(9, 'Mauricio', '(22) 22222-2222', 'Rua 5', 'mauricio@hotmail.com', '122.222.222-22', '2019-08-14'),
(10, 'Matheus', '(33) 33333-3333', 'Rua C', 'hugovasconcelosf@hotmail.com', '666.666.666-66', '2019-08-29');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compras`
--

CREATE TABLE `compras` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `peca` varchar(25) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `compras`
--

INSERT INTO `compras` (`id`, `valor`, `peca`, `funcionario`, `data`) VALUES
(2, '250.00', 'Tela Original J3', 'Paloma', '2019-08-26'),
(4, '140.00', 'Placa de Ãudio', 'Paloma', '2019-08-26'),
(5, '260.00', 'Tela Original J5', 'Paloma', '2019-08-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionarios`
--

CREATE TABLE `funcionarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `cpf` varchar(18) NOT NULL,
  `telefone` varchar(15) NOT NULL,
  `endereco` varchar(35) NOT NULL,
  `cargo` varchar(20) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionarios`
--

INSERT INTO `funcionarios` (`id`, `nome`, `cpf`, `telefone`, `endereco`, `cargo`, `data`) VALUES
(4, 'Hugo Vasconcelos', '555.555.555-55', '(55) 55555-5555', 'Rua 7', 'Administrador', '2019-08-14'),
(5, 'Paloma', '444.444.444-45', '(55) 55555-5555', 'Rua C', 'Tesoureiro', '2019-08-14'),
(7, 'Marcela', '000.000.000-00', '(11) 11111-1111', 'Rua C', 'FuncionÃ¡rio', '2019-08-14'),
(8, 'Marcos Pedro', '888.888.888-88', '(88) 88888-8888', 'Rua A', 'FuncionÃ¡rio', '2019-08-19'),
(9, 'Pedro', '222.222.222-22', '(33) 33333-3333', 'Rua A', 'Gerente', '2019-08-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `gastos`
--

CREATE TABLE `gastos` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `motivo` varchar(100) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `gastos`
--

INSERT INTO `gastos` (`id`, `valor`, `motivo`, `funcionario`, `data`) VALUES
(7, '80.00', 'Eletrecista', 'Paloma', '2019-08-26'),
(9, '160.00', 'Compra de Cadeiras', 'Paloma', '2019-08-26'),
(10, '250.00', 'Vidraceiro', 'Hugo Vasconcelos', '2019-08-27'),
(11, '100.00', 'Eletrecista', 'Paloma', '2019-08-28');

-- --------------------------------------------------------

--
-- Estrutura da tabela `movimentacoes`
--

CREATE TABLE `movimentacoes` (
  `id` int(11) NOT NULL,
  `tipo` varchar(15) NOT NULL,
  `movimento` varchar(20) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `id_movimento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `movimentacoes`
--

INSERT INTO `movimentacoes` (`id`, `tipo`, `movimento`, `valor`, `funcionario`, `data`, `id_movimento`) VALUES
(4, 'SaÃ­da', 'Pagamento', '300.00', 'Hugo Vasconcelos', '2019-08-20', 2),
(12, 'Entrada', 'Venda', '60.00', 'Paloma', '2019-08-26', 7),
(15, 'SaÃ­da', 'Compra', '250.00', 'Paloma', '2019-08-26', 2),
(16, 'SaÃ­da', 'Gasto', '80.00', 'Paloma', '2019-08-26', 7),
(17, 'Entrada', 'ServiÃ§o', '975.00', 'Marcela', '2019-08-27', 9),
(19, 'SaÃ­da', 'Gasto', '160.00', 'Paloma', '2019-08-26', 9),
(21, 'SaÃ­da', 'Compra', '140.00', 'Paloma', '2019-08-26', 4),
(22, 'SaÃ­da', 'Pagamento', '260.00', 'Paloma', '2019-08-26', 3),
(23, 'Entrada', 'Venda', '380.00', 'Hugo Vasconcelos', '2019-08-27', 9),
(24, 'SaÃ­da', 'Gasto', '250.00', 'Hugo Vasconcelos', '2019-08-27', 10),
(25, 'Entrada', 'ServiÃ§o', '320.00', 'Marcos Pedro', '2019-08-27', 10),
(26, 'SaÃ­da', 'Pagamento', '100.00', 'Paloma', '2019-08-27', 4),
(27, 'SaÃ­da', 'Compra', '260.00', 'Paloma', '2019-08-27', 5),
(28, 'SaÃ­da', 'Gasto', '100.00', 'Paloma', '2019-08-28', 11),
(29, 'Entrada', 'ServiÃ§o', '350.00', 'Marcela', '2019-08-28', 11),
(30, 'Entrada', 'ServiÃ§o', '395.00', 'Marcela', '2019-08-29', 12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `orcamentos`
--

CREATE TABLE `orcamentos` (
  `id` int(11) NOT NULL,
  `cliente` varchar(25) NOT NULL,
  `tecnico` varchar(25) NOT NULL,
  `produto` varchar(25) NOT NULL,
  `serie` varchar(30) DEFAULT NULL,
  `problema` varchar(255) NOT NULL,
  `laudo` varchar(255) DEFAULT NULL,
  `obs` varchar(255) DEFAULT NULL,
  `valor_servico` decimal(10,2) DEFAULT NULL,
  `pecas` varchar(255) DEFAULT NULL,
  `valor_pecas` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `desconto` decimal(10,2) DEFAULT NULL,
  `valor_total` decimal(10,2) DEFAULT NULL,
  `pgto` varchar(20) DEFAULT NULL,
  `data_abertura` date NOT NULL,
  `data_geracao` date DEFAULT NULL,
  `data_aprovacao` date DEFAULT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `orcamentos`
--

INSERT INTO `orcamentos` (`id`, `cliente`, `tecnico`, `produto`, `serie`, `problema`, `laudo`, `obs`, `valor_servico`, `pecas`, `valor_pecas`, `total`, `desconto`, `valor_total`, `pgto`, `data_abertura`, `data_geracao`, `data_aprovacao`, `status`) VALUES
(4, '555', '7', 'Celular J3 Preto', '12345', 'NÃ£o Liga', 'Processador Queimado', 'Tela Arranhada', '150.00', 'Processador', '260.00', '410.00', '15.00', '395.00', 'Dinheiro', '2019-08-19', '2019-08-20', '2019-08-21', 'Aprovado'),
(5, '555.555.555-55', '7', 'Celular Galaxy S3', '2265656', 'Sem Som', ' A tela apresentava e precisou ser trocada', 'Tricado na Tela', '150.00', 'Tela original', '250.00', '400.00', '5.00', '395.00', 'Dinheiro', '2019-08-19', '2019-08-20', '2019-08-22', 'Aprovado'),
(7, '555', '8', 'Celular XXXX', '1215155', 'Tela Quebrada', ' XXXXXXXXXXX', 'Nenhuma', '100.00', 'XXXX', '50.00', '150.00', '10.00', '140.00', 'Dinheiro', '2019-08-19', '2019-08-21', '2019-08-21', 'Aprovado'),
(9, '122.222.222-22', '7', 'Celular Galaxy S3', '265220', 'Tela Rachada', ' Foi preciso colocar uma tela original', 'Botao afundado', '100.00', 'Tela original', '260.00', '360.00', '15.00', '345.00', 'Dinheiro', '2019-08-20', '2019-08-20', '2019-08-21', 'Aprovado'),
(10, '555', '7', 'Celular J3 Preto', '20152154', 'Tela Quebrada', ' Foi necessÃ¡rio substituir a placa de audio!!', 'BotÃ£o que nÃ£o estÃ¡ funcionando', '150.00', 'Placa de Ãudio', '65.00', '215.00', '10.00', '205.00', 'Dinheiro', '2019-08-20', '2019-08-21', '2019-08-22', 'Aprovado'),
(11, '555.555.555-55', '8', 'Iphone 5', '05154155', 'Sem Som', ' Trocar a Placa de Audio', 'Tela Arranhada', '100.00', 'Placa de Ãudio', '65.00', '165.00', '15.00', '150.00', 'Dinheiro', '2019-08-21', '2019-08-21', '2019-08-21', 'Aprovado'),
(12, '122.222.222-22', '8', 'Celular XXXX', '121212', 'Tela Quebrada', ' Trocar a Tela', 'Arranhado Atras', '180.00', 'Tela Original', '250.00', '430.00', '50.00', '380.00', 'Dinheiro', '2019-08-21', '2019-08-21', '2019-08-21', 'Aprovado'),
(13, '122.222.222-22', '8', 'Celular J3 Preto', '2564515', 'NÃ£o Liga', ' Trocar a Placa', 'Nenhuma', '140.00', 'Placa', '350.00', '490.00', '20.00', '470.00', 'Dinheiro', '2019-08-22', '2019-08-22', '2019-08-22', 'Aprovado'),
(14, '555', '7', 'Iphone 8', '0651512', 'Tela Trincada', ' Trocar a Tela', 'Botoes Laterais Afundados', '350.00', 'Tela Original Iphone 8', '650.00', '1000.00', '25.00', '975.00', 'Dinheiro', '2019-08-26', '2019-08-26', '2019-08-26', 'Aprovado'),
(15, '555', '8', 'Celular XXXX', '66454', 'NÃ£o Liga', ' Trocar a Placa', 'Nenhuma', '180.00', 'Placa', '160.00', '340.00', '20.00', '320.00', 'Dinheiro', '2019-08-27', '2019-08-27', '2019-08-27', 'Aprovado'),
(16, '555', '7', 'Celular J3 Preto', '545454', 'NÃ£o Liga', ' Trocar Placa', 'Tela Arranhada', '150.00', 'Placa de Ãudio', '250.00', '400.00', '50.00', '350.00', 'Dinheiro', '2019-08-28', '2019-08-28', '2019-08-28', 'Aprovado'),
(17, '555', '8', 'Celular XXXX', '4545', 'Tela Quebrada', NULL, 'Nenhuma', NULL, NULL, NULL, NULL, NULL, '0.00', NULL, '2019-08-28', NULL, NULL, 'Aberto'),
(18, '555', '7', 'Celular Galaxy S3', '12345', 'Sem Som', NULL, 'Tela Arranhada', NULL, NULL, NULL, NULL, NULL, '0.00', NULL, '2019-08-28', NULL, NULL, 'Aberto'),
(19, '666.666.666-66', '7', 'Celular J3 Preto', '11515', 'Tela Quebrada', ' Trocar a tela', 'BotÃ£o Afundando', '150.00', 'Tela original para Samsung', '260.00', '410.00', '15.00', '395.00', 'Dinheiro', '2019-08-29', '2019-08-29', '2019-08-29', 'Aprovado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `os`
--

CREATE TABLE `os` (
  `id` int(11) NOT NULL,
  `id_orc` int(11) NOT NULL,
  `cliente` varchar(25) NOT NULL,
  `produto` varchar(25) NOT NULL,
  `tecnico` varchar(25) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `data_abertura` date NOT NULL,
  `data_fechamento` date DEFAULT NULL,
  `garantia` varchar(15) DEFAULT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `os`
--

INSERT INTO `os` (`id`, `id_orc`, `cliente`, `produto`, `tecnico`, `total`, `data_abertura`, `data_fechamento`, `garantia`, `status`) VALUES
(1, 11, '555.555.555-55', 'Iphone 5', '8', '150.00', '2019-08-21', '2019-08-21', '90 Dias', 'Fechada'),
(2, 4, '555', 'Celular J3 Preto', '7', '395.00', '2019-08-21', NULL, NULL, 'Aberta'),
(3, 9, '122.222.222-22', 'Celular Galaxy S3', '7', '345.00', '2019-08-21', NULL, NULL, 'Aberta'),
(4, 7, '555', 'Celular XXXX', '8', '140.00', '2019-08-21', NULL, NULL, 'Cancelada'),
(5, 12, '122.222.222-22', 'Celular XXXX', '8', '380.00', '2019-08-21', '2019-08-21', '60 Dias', 'Fechada'),
(6, 5, '555.555.555-55', 'Celular Galaxy S3', '7', '395.00', '2019-08-22', '2019-08-22', '50 Dias', 'Fechada'),
(8, 10, '555', 'Celular J3 Preto', '7', '205.00', '2019-08-22', NULL, NULL, 'Cancelada'),
(9, 14, '555', 'Iphone 8', '7', '975.00', '2019-08-26', '2019-08-26', '90 Dias', 'Fechada'),
(10, 15, '555', 'Celular XXXX', '8', '320.00', '2019-08-27', '2019-08-27', '60 Dias', 'Fechada'),
(11, 16, '555', 'Celular J3 Preto', '7', '350.00', '2019-08-28', '2019-08-28', '60 Dias', 'Fechada'),
(12, 19, '666.666.666-66', 'Celular J3 Preto', '7', '395.00', '2019-08-29', '2019-08-29', '90 Dias', 'Fechada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pagamentos`
--

CREATE TABLE `pagamentos` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `tesoureiro` varchar(25) NOT NULL,
  `data` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pagamentos`
--

INSERT INTO `pagamentos` (`id`, `valor`, `funcionario`, `tesoureiro`, `data`) VALUES
(2, '300.00', 'Marcela', 'Hugo Vasconcelos', '2019-08-26'),
(3, '260.00', 'Marcos Pedro', 'Paloma', '2019-08-26'),
(4, '100.00', 'Paloma', 'Paloma', '2019-08-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` int(11) NOT NULL,
  `produto` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `usuario` varchar(20) NOT NULL,
  `senha` varchar(20) NOT NULL,
  `cargo` varchar(25) NOT NULL,
  `id_funcionario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `usuario`, `senha`, `cargo`, `id_funcionario`) VALUES
(1, 'Administrador', 'admin', '123', 'Administrador', 1),
(8, 'Hugo Vasconcelos', 'hugo', '123', 'Administrador', 4),
(9, 'Paloma', 'paloma', '123', 'Tesoureiro', 5),
(11, 'Marcela', 'marcela', '123', 'FuncionÃ¡rio', 7),
(12, 'Marcos Pedro', 'marcos', '123', 'FuncionÃ¡rio', 8),
(13, 'Pedro', 'pedro', '123', 'Gerente', 9),
(14, 'Matheus', '666.666.666-66', '666.666.666-66', 'Cliente', -1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendas`
--

CREATE TABLE `vendas` (
  `id` int(11) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `produto` varchar(50) NOT NULL,
  `funcionario` varchar(25) NOT NULL,
  `data` date NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vendas`
--

INSERT INTO `vendas` (`id`, `valor`, `produto`, `funcionario`, `data`, `status`) VALUES
(7, '60.00', 'Celular J3 Preto', 'Paloma', '2019-08-27', 'Efetuada'),
(8, '50.00', 'Celular J3 Preto-8', 'Paloma', '2019-08-27', 'Cancelada'),
(9, '380.00', 'Celular J3 Preto', 'Hugo Vasconcelos', '2019-08-27', 'Efetuada');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `backup`
--
ALTER TABLE `backup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cargos`
--
ALTER TABLE `cargos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `compras`
--
ALTER TABLE `compras`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `funcionarios`
--
ALTER TABLE `funcionarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gastos`
--
ALTER TABLE `gastos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movimentacoes`
--
ALTER TABLE `movimentacoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orcamentos`
--
ALTER TABLE `orcamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `os`
--
ALTER TABLE `os`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pagamentos`
--
ALTER TABLE `pagamentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendas`
--
ALTER TABLE `vendas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `backup`
--
ALTER TABLE `backup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cargos`
--
ALTER TABLE `cargos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `compras`
--
ALTER TABLE `compras`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `funcionarios`
--
ALTER TABLE `funcionarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `gastos`
--
ALTER TABLE `gastos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `movimentacoes`
--
ALTER TABLE `movimentacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `orcamentos`
--
ALTER TABLE `orcamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `os`
--
ALTER TABLE `os`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pagamentos`
--
ALTER TABLE `pagamentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `vendas`
--
ALTER TABLE `vendas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
