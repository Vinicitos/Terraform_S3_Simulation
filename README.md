**Sigo aprendendo usar Terraform com Cenários Simulados criados pelo CHATGPT.**

Dessa vez, usei o Terraform para criar a configuração de um Bucket S3 para Armazenamento de Logs com ACL 

Sei que há muito que melhorar, mas só chega lá, quem não desiste.

# Cenário Simulado: Configuração de Bucket S3 para Armazenamento de Logs
## Descrição do Projeto:
Você foi contratado por uma startup fictícia chamada Logify, que está no início de suas operações. A empresa precisa de uma solução para armazenar logs de suas aplicações e deseja utilizar a AWS S3 para isso. Eles  uerem começar com uma configuração básica, mas seguindo boas práticas.

## Requisitos Técnicos:
* Criar um bucket no S3 chamado logify-logs para armazenar os logs de suas aplicações.
* Habilitar versionamento no bucket, para que alterações nos arquivos sejam preservadas.
* Bloquear acesso público ao bucket, garantindo a segurança dos dados.
* Criar um segundo bucket chamado logify-access-logs para armazenar logs de acesso do primeiro bucket, como parte do monitoramento.
* Adicionar tags aos buckets para indicar o ambiente (dev, prod, etc.) e o nome do projeto.
## Restrições e Políticas da Empresa:
* O ambiente inicial será de desenvolvimento (dev), mas a configuração deve ser reutilizável para produção no futuro.
* O uso de recursos deve ser limitado à região us-east-1 por motivos de custo.
* A empresa espera uma estrutura modular no futuro, mas aceita algo simples para começar.