# Projetos Firecast (RPG)

Coleção de **fichas/plug-ins (.rpk)** para **RRPG Firecast**, organizadas por sistema/mesa.

> Cada pasta em `Projetos/` é um módulo do Firecast e já possui um `.rpk` compilado dentro de `output/` (pronto para instalar).

## Projetos incluídos

| Projeto | Pasta | SDK | Arquivo .rpk (pronto) |
|---|---:|:---:|---|
| Changeling: Morganna's Dream | `Changeling - Morganna's Dream` | SDK 3.5 | Changeling - Morganna's Dream.rpk |
| Ficha Os Mundos Dos Mortos | `OsMundosDosMortos` | SDK 3.5 | OsMundosDosMortos.rpk |
| Ficha Tormenta RPG | `Tormenta` | SDK 3.5 | Tormenta.rpk |
| Ficha Tormenta RPG para 7.8 | `Tormenta7.8` | SDK 3.4b | Tormenta7.8.rpk |
| Ficha Vampiro a Mascara | `VampiroAMascara` | SDK 3.5 | VampiroAMascara.rpk |
| Lobisomen: Drake's Chronicles | `Lobisomen - Drakes's Chronicles V2` | SDK 3.5 | Lobisomen - Drakes's Chronicles V2.rpk |
| PokeRPG | `PokeRPG V7` | SDK 3.5 | PokeRPG V11.rpk, PokeRPG V7.rpk |
| Vampiro: Drake's Chronicles | `Vampiro - Drake's Chronicles` | SDK 3.5 | Vampiro - Drake's Chronicles.rpk |

## Instalação (usuário)

1. Entre na pasta do projeto desejado (ex.: `Projetos/Tormenta/`).
2. Abra `output/` e pegue o arquivo **`.rpk`**.
3. No **Firecast**, instale o plugin pelo menu de plugins (opção de *instalar/importar plugin* a partir de um arquivo) e selecione o `.rpk`.
4. Reinicie o Firecast se necessário.

### Observações importantes

- **Tormenta7.8**: projeto feito especificamente para a versão **RRPG 7.8** (SDK `3.4b`). Os demais estão em SDK `3.5`.
- Alguns módulos são **customizados para mesas específicas** (ex.: *Drake's Chronicles* / *Morganna's Dream*), então podem ter campos/regras bem direcionados.

## Desenvolvimento (para quem quer mexer no código)

### Estrutura típica

- `module.xml` — metadados do módulo (id, nome, descrição, SDK, autor etc.).
- Pastas do sistema (ex.: `TRPG/`, etc.) — telas **.lfm** e scripts **.lua/.dlua**.
- `sdk/` — arquivos do SDK/engine usados pelo projeto (normalmente não precisa editar).
- `output/` — **build compilado** do plugin (`.rpk`) + artefatos.

### Como gerar um novo `.rpk`

Dependendo da sua versão do Firecast/SDK:

1. Abra o projeto no ambiente do Firecast/SDK (quando aplicável).
2. Compile/empacote o módulo para gerar o `.rpk`.
3. O resultado costuma ir para `output/`.

> Dica: se você só quer **testar rápido**, normalmente basta substituir o `.rpk` instalado no Firecast por uma versão nova gerada.

## Créditos / Autor

Os metadados em `module.xml` apontam os autores e contatos de cada módulo.  
Em geral, os projetos são assinados como **Tricket** / **Rafael Honorio** (ver `module.xml` de cada pasta).

## Licença

Este repositório **não inclui um arquivo de licença** no momento.  
Se você pretende distribuir/colaborar publicamente, recomenda-se adicionar uma licença (ex.: MIT) e esclarecer quais partes (imagens, regras, textos) podem ser reutilizadas.
