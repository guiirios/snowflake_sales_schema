# **❄️ Sales Analytics – Snowflake Schema (Data Warehouse)**

![SQL](https://img.shields.io/badge/SQL-fff?style=for-the-badge&logo=mysql&logoColor=blue)

Este repositório contém o **modelo de Data Warehouse** utilizando o **Snowflake Schema**, desenvolvido com **SQL** e modelado no **MySQL Workbench**.  
O objetivo do projeto é permitir **análises de vendas**, como volume, valor total vendido e desempenho por **cliente, vendedor, produto, categoria, localização e tempo**.

---

## 📁 Estrutura do Repositório

| Arquivo | Descrição |
|----------|------------|
| **sales_snowflake.mwb** | Modelo visual criado no *MySQL Workbench* (diagrama dimensional Snowflake) |
| **sales_snowflake.sql** | Script SQL para criação das tabelas de dimensões e fato |
| **README.md** | Documentação do projeto |

---

## 🧱 Estrutura do Modelo

O modelo segue o padrão **Snowflake Schema**, com **dimensões normalizadas** e uma **tabela fato central**.

---

## 📊 Tabela Fato

| 🗂️ **Tabela** | 📖 **Descrição** |
|----------------|------------------|
| **fact_sales** 📈 | Armazena os **eventos de venda**, contendo as métricas **quantidade** e **valor total (amount)**, além das chaves para as dimensões. |

---

## 🧩 Tabelas Dimensão

| 🗂️ **Tabela** | 📖 **Descrição** |
|----------------|------------------|
| **dim_customer** 👤 | Informações dos **clientes**, incluindo nome, CPF, data de nascimento e localização. |
| **dim_vendor** 🧑‍💼 | Dados dos **vendedores**, com informações pessoais e localização. |
| **dim_product** 📦 | Detalhes dos **produtos** comercializados. |
| **dim_category** 🏷️ | Categorias dos produtos, normalizadas a partir da dimensão produto. |
| **dim_location** 🌍 | Dados geográficos (**país, estado e cidade**), reutilizados por clientes e vendedores. |
| **dim_date** 📅 | Dimensão de tempo para análise das vendas ao longo dos dias. |

---

## ✨ Boas Práticas Aplicadas

- Separação clara entre **tabelas fato e dimensões**
- Uso de **Snowflake Schema** para reduzir redundância
- Chaves primárias e estrangeiras para garantir integridade
- Estrutura adequada para **consultas analíticas (OLAP)**

---

## 🎯 Objetivos do Projeto

- Praticar **modelagem dimensional**
- Aplicar corretamente o **Snowflake Schema**
- Entender a diferença entre **Star Schema e Snowflake Schema**
- Criar uma base sólida para **Business Intelligence**

---

## 💻 Tecnologias Utilizadas

🗄️ **MySQL**  
🧰 **MySQL Workbench**  
⚙️ **SQL Relacional (DDL + Constraints)**  
🔄 **Git e GitHub**
