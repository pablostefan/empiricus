# Empiricus

Este é um aplicativo de de material da Empiricus feito com Flutter, utilizando os pricipios do Clean Architecture e MVC
para o gerenciamento de estado.

## Informações Para Acesso

Para acessar o aplicativo, basta apenas utilizar as informações abaixo:

- **E-mail**: empiricus@gmai.com
- **Senha**: empiricus

Esses dados estão mockados na aplicação.

## Estrutura do Projeto

O projeto segue uma estrutura organizada em camadas.

As principais pastas e componentes são:

### lib

- **app**: Contém o `AppWidget`, que é o ponto de entrada do aplicativo.
- **core**: Responsável por recursos compartilhados em todo o projeto, incluindo:
    - **infra**:
        - `http`: Serviço HTTP para interações de rede.
    - **utils**: Utilitários de uso geral, como routes, APIs e ResultState.
    - **error**: Classes e interfaces para o tratamento de erros e falhas.
    - **injection**: Configuração de injeção de dependência.
- **features**: Contém o módulo de dos artigos de investimentos. Está organizado em três camadas:
    - **Apresentação (`presentation`)**: Inclui páginas, controladores e widgets.
    - **Dados (`data`)**: Camada de dados.
    - **Domínio (`domain`)**: Inclui as entidades e os casos de uso.

## Funcionalidades

- **Listagem de Artigos de Investimento**: Exibe uma lista de artigos de investimento.
- **Ver detalhes**: Mostra os detalhes mais especificos de cada um dos artigos de investimento.

## Tecnologias Utilizadas

- **Flutter**: Para o desenvolvimento de interfaces de usuário nativas.
- **Dio**: Gerenciamento de requisições HTTP.
- **GetIt**: Injeção de dependências.
- **Clean Architecture**: Estruturação do código em camadas de forma independente.

## Instalação e Execução

1. **Clone o repositório**:
   ```bash
   git clone https://github.com/pablostefan/empiricus.git
   ```

2. **Navegue até o diretório do projeto**:
   ```bash
   cd empiricus
   ```

3. **Instale as dependências**:
   ```bash
   flutter pub get
   ```

4. **Execute o aplicativo com o arquivo**:
    ```bash
    flutter run
    ```

## Estrutura de Pastas

```plaintext
lib/
├── app/                         # Ponto de entrada do aplicativo
├── core/                        # Recursos compartilhados e infraestrutura
│   ├── error/                   # Tratamento de erros e falhas
│   ├── infra/
│   │   └── http/                # Serviços HTTP
│   ├── utils/                   # Utilitários diversos
│   └── injection/               # Injeção de dependências
└── features/
    └── auth/                    # Módulo de autenticação
    │   ├── data/                # Camada de dados
    │   ├── domain/              # Camada de domínio
    │   └── presentation/        # Camada de apresentação
    └── investments/             # Módulo de investimentos
        ├── data/                # Camada de dados
        ├── domain/              # Camada de domínio
        └── presentation/        # Camada de apresentação
```