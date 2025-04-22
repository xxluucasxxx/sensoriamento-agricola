# 🌱 Sistema de Monitoramento Agrícola Inteligente

Este projeto apresenta a modelagem de banco de dados relacional de um sistema de monitoramento agrícola baseado em sensores de umidade, pH e nutrientes (NPK), visando otimizar a irrigação e aplicação de nutrientes em plantações.

## 🎯 Objetivo

Modelar e documentar um banco de dados que permita:
- Armazenamento de leituras de sensores (umidade, pH, fósforo e potássio)
- Registro de aplicações de água e nutrientes
- Relacionamento entre locais de plantação e culturas

## 🧱 Entidades do MER

### 1. Cultura
- `id_cultura` (PK)
- `nome`

### 2. Sensor
- `id_sensor` (PK)
- `tipo_sensor` (S1, S2, S3)

### 3. Local_Plantacao
- `id_local` (PK)
- `nome_local`

### 4. Leitura_Sensor
- `id_leitura` (PK)
- `id_sensor` (FK)
- `id_local` (FK)
- `data_hora`
- `valor`

### 5. Aplicacao_Agua
- `id_aplicacao` (PK)
- `id_local` (FK)
- `data_hora`
- `quantidade_agua`

### 6. Aplicacao_Nutriente
- `id_aplicacao` (PK)
- `id_local` (FK)
- `data_hora`
- `tipo_nutriente`
- `quantidade`

### 7. Cultura_Local
- `id_cultura` (FK)
- `id_local` (FK)

## 🔄 Relacionamentos

- Sensor (1) ---< (N) Leitura_Sensor
- Local_Plantacao (1) ---< (N) Leitura_Sensor
- Local_Plantacao (1) ---< (N) Aplicacao_Agua
- Local_Plantacao (1) ---< (N) Aplicacao_Nutriente
- Cultura (1) ---< (N:N) Cultura_Local ---< (N) Local_Plantacao

## 🛠 Arquivos

- `modelo_agricola.sql` → Script SQL com criação das tabelas e relacionamentos.
- `DER_Monitoramento_Agricola.png` → Imagem do diagrama visual.
- `README.md` → Este arquivo de documentação.

> ⚠️ Observação: > Observação: O arquivo `.dmd` não pôde ser gerado diretamente por limitações técnicas durante a montagem do ambiente. No entanto, a estrutura está modelada com exatidão em formato `.sql` e visualizada no diagrama `.png`. Caso necessário, o `.dmd` pode ser facilmente reconstruído a partir dos arquivos fornecidos.


## 👨‍🌾 Resultado

Este modelo serve como base para um sistema automatizado de ajuste de irrigação e nutrientes, otimizando recursos e aumentando a produtividade agrícola.
