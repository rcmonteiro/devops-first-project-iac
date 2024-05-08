# Pré-requisitos

- Instalar o terraform cli
- Instalar o aws cli
- Configurar o SSO na AWS
  - `aws configure sso`
- Fazer o login pelo sso
  - `aws sso login --profile {$profileName}`


## Comandos básicos do terraform

- `terraform init`: Inicia o terraform, mas antes, crie o providers.tf
- `terraform validate`: Validar o comando, dos arquivos para criar resources
- `terraform plan`: Conferir tudo que vai ocorrer com o que foi declarado para criação
- `terraform plan --destroy`: ou destruição
- `terraform apply`: Aplicar as alterações tendo que confirmar antes de executar
- `terraform apply -auto-approve`: bypass da confirmação, nunca executar isso sem antes rodar o plan!
- `terraform apply --destroy`: para destruir os recursos

> O `terraform plan` vai inclusive verificar o que foi feito diretamente via console, e indicar que o que foi feito por lá, será desfeito. o console precisa ser somente leitura, tudo precisa ser feito via IaC!

## Trabalhando com workspaces

- `terraform workspace new staging`: criando um workspace para staging
- Podemos usar a variável `terraform.workspace` para nomear os recursos, desta forma cada recurso fica disponível exclusivamente no seu respectivo workspace, melhorando nossa camada de segurança para validar atualizações da nossa infra