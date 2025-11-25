# 🛒 E-commerce Interface

Interface moderna e responsiva para aplicação e-commerce, desenvolvida com Vue 3, TypeScript e Tailwind CSS. Este projeto representa a camada frontend de uma solução completa de e-commerce, consumindo uma API REST desenvolvida previamente.

## 📋 Sobre o Projeto

Este é um projeto pessoal desenvolvido com o objetivo de aprimorar conhecimentos em **Vue 3**, **TypeScript** e boas práticas de desenvolvimento frontend. A aplicação oferece uma interface intuitiva para usuários navegarem, pesquisarem e comprarem produtos, integrando-se perfeitamente com a API backend de e-commerce.

### 🎯 Objetivos de Aprendizado

- Dominar o ecossistema Vue 3 (Composition API, Reactivity System)
- Aprofundar conhecimentos em TypeScript para aplicações frontend
- Implementar gerenciamento de estado com Pinia
- Criar interfaces responsivas e modernas com Tailwind CSS
- Aplicar boas práticas de arquitetura e organização de código
- Containerizar aplicações frontend com Docker

## ✨ Funcionalidades

- 🏠 **Página Inicial**: Exibição de produtos em destaque e categorias
- 🔍 **Busca e Filtros**: Sistema de busca e filtros avançados para produtos
- 📦 **Catálogo de Produtos**: Listagem completa com paginação e ordenação
- 🛍️ **Detalhes do Produto**: Visualização detalhada com imagens, descrições e especificações
- 🛒 **Carrinho de Compras**: Gerenciamento de itens, quantidades e cálculo de totais
- 💳 **Checkout**: Fluxo completo de finalização de compra
- 👤 **Autenticação**: Login e registro de usuários

## 🚀 Tecnologias Utilizadas

### Core

- **[Vue 3](https://vuejs.org/)** (v3.5.22) - Framework JavaScript progressivo
  - Composition API para lógica reutilizável
  - Reatividade moderna e performática
  - Single File Components (SFC)

- **[TypeScript](https://www.typescriptlang.org/)** (v5.9) - Superset tipado do JavaScript
  - Type safety em todo o projeto
  - Melhor IntelliSense e autocomplete
  - Detecção de erros em tempo de desenvolvimento

### Estilização

- **[Tailwind CSS](https://tailwindcss.com/)** (v4.1.17) - Framework CSS utility-first
  - Design system consistente
  - Classes utilitárias para estilização rápida
  - Responsividade simplificada
  - Dark mode support

### Roteamento e Estado

- **[Vue Router](https://router.vuejs.org/)** (v4.6.3) - Roteamento oficial do Vue
  - Navegação SPA (Single Page Application)
  - Guards de navegação
  - Rotas aninhadas e dinâmicas

- **[Pinia](https://pinia.vuejs.org/)** (v3.0.3) - Store oficial do Vue
  - Gerenciamento de estado moderno e intuitivo
  - TypeScript support nativo
  - DevTools integration

### Build e Desenvolvimento

- **[Vite](https://vite.dev/)** (v7.1.11) - Build tool e dev server
  - Hot Module Replacement (HMR) ultra-rápido
  - Build otimizado para produção
  - Plugin ecosystem robusto

- **[Vue DevTools](https://devtools.vuejs.org/)** - Ferramentas de debug
  - Inspeção de componentes
  - Análise de performance
  - Time-travel debugging


### Containerização

- **[Docker](https://www.docker.com/)** - Plataforma de containerização
  - Ambiente de desenvolvimento consistente
  - Deploy simplificado
  - Isolamento de dependências

- **[Docker Compose](https://docs.docker.com/compose/)** - Orquestração de containers
  - Configuração declarativa de serviços
  - Facilita o desenvolvimento local

## 📁 Estrutura do Projeto

```
ecommerce-interface/
├── public/                  # Arquivos estáticos públicos
├── src/
│   ├── assets/             # Imagens, ícones, fontes
│   ├── components/         # Componentes Vue reutilizáveis
│   │   ├── common/        # Componentes genéricos (Button, Input, Card)
│   │   ├── layout/        # Layout (Header, Footer, Sidebar)
│   │   ├── product/       # Componentes de produto
│   │   └── cart/          # Componentes do carrinho
│   ├── composables/       # Composition functions reutilizáveis
│   ├── router/            # Configuração de rotas
│   ├── stores/            # Stores Pinia (estado global)
│   ├── services/          # Serviços de API
│   ├── types/             # Definições TypeScript
│   ├── utils/             # Funções utilitárias
│   ├── views/             # Componentes de página/rota
│   ├── App.vue            # Componente raiz
│   └── main.ts            # Entry point da aplicação
├── docker-compose.yml      # Configuração Docker Compose
├── Dockerfile             # Configuração Docker
├── vite.config.ts         # Configuração Vite
├── tsconfig.json          # Configuração TypeScript
├── eslint.config.ts       # Configuração ESLint
└── package.json           # Dependências e scripts
```

## 🛠️ Pré-requisitos

Antes de começar, certifique-se de ter instalado:

- **Node.js** (v20.19.0 ou v22.12.0+)
- **npm** ou **yarn**
- **Docker** e **Docker Compose** (opcional, para containerização)
- **Git**

## 🚀 Instalação e Execução

### Instalação Local

1. **Clone o repositório**
```bash
git clone https://github.com/seu-usuario/ecommerce-interface.git
cd ecommerce-interface
```

2. **Instale as dependências**
```bash
npm install
```

3. **Configure as variáveis de ambiente**
```bash
cp .env.example .env
```

Edite o arquivo `.env` com as configurações da sua API:
```env
VITE_API_URL=http://localhost:3000/api
```

4. **Execute em modo desenvolvimento**
```bash
npm run dev
```

A aplicação estará disponível em `http://localhost:5173`

### Execução com Docker

1. **Build e execute o container**
```bash
docker-compose up --build
```

2. **Acesse a aplicação**
```
http://localhost:5173
```

3. **Parar o container**
```bash
docker-compose down
```

## 📜 Scripts Disponíveis

```bash
# Desenvolvimento com hot-reload
npm run dev

# Build para produção
npm run build

# Preview da build de produção
npm run preview

# Verificação de tipos TypeScript
npm run type-check

# Lint e correção automática
npm run lint

# Executar testes unitários
npm run test:unit

# Executar testes em modo watch
npm run test:unit -- --watch
```

## 🏗️ Build para Produção

```bash
# Build otimizado
npm run build

# Preview local da build
npm run preview
```

Os arquivos de produção serão gerados na pasta `dist/` e estarão prontos para deploy.

## 🔧 Configuração de IDE Recomendada

### Visual Studio Code

**Extensões Recomendadas:**
- [Vue - Official](https://marketplace.visualstudio.com/items?itemName=Vue.volar) (anteriormente Volar)
- [TypeScript Vue Plugin](https://marketplace.visualstudio.com/items?itemName=Vue.vscode-typescript-vue-plugin)
- [ESLint](https://marketplace.visualstudio.com/items?itemName=dbaeumer.vscode-eslint)
- [Tailwind CSS IntelliSense](https://marketplace.visualstudio.com/items?itemName=bradlc.vscode-tailwindcss)
- [Docker](https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker)

**Configurações (.vscode/settings.json):**
```json
{
  "editor.formatOnSave": true,
  "editor.codeActionsOnSave": {
    "source.fixAll.eslint": true
  }
}
```

### Browser DevTools

**Chrome/Edge/Brave:**
- [Vue.js DevTools](https://chromewebstore.google.com/detail/vuejs-devtools/nhdogjmejiglipccpnnnanhbledajbpd)
- Ative [Custom Formatters](http://bit.ly/object-formatters) no DevTools

**Firefox:**
- [Vue.js DevTools](https://addons.mozilla.org/en-US/firefox/addon/vue-js-devtools/)
- Ative [Custom Formatters](https://fxdx.dev/firefox-devtools-custom-object-formatters/)

## 🧪 Testes

O projeto utiliza **Vitest** para testes unitários:

```bash
# Executar todos os testes
npm run test:unit

# Modo watch (reexecuta ao salvar)
npm run test:unit -- --watch

# Coverage
npm run test:unit -- --coverage
```

## 📦 Deploy

### Vercel / Netlify

1. Conecte seu repositório
2. Configure o build command: `npm run build`
3. Configure o output directory: `dist`
4. Adicione as variáveis de ambiente

### Docker

```bash
# Build da imagem
docker build -t ecommerce-interface .

# Execute o container
docker run -p 5173:5173 ecommerce-interface
```

## 🤝 Integração com Backend

Este frontend foi desenvolvido para consumir a API REST de e-commerce. Certifique-se de:

1. Ter a API rodando localmente ou em ambiente de staging
2. Configurar corretamente a variável `VITE_API_URL` no arquivo `.env`
3. Verificar as políticas de CORS no backend

## 📚 Recursos de Aprendizado

- [Documentação Vue 3](https://vuejs.org/guide/introduction.html)
- [TypeScript Handbook](https://www.typescriptlang.org/docs/)
- [Tailwind CSS Docs](https://tailwindcss.com/docs)
- [Pinia Documentation](https://pinia.vuejs.org/)
- [Vue Router Guide](https://router.vuejs.org/guide/)
- [Vite Documentation](https://vite.dev/guide/)

## 🎯 Roadmap

- [ ] Implementação de todas as páginas principais
- [ ] Sistema de autenticação JWT
- [ ] Gerenciamento de perfil de usuário
- [ ] Histórico de pedidos
- [ ] Sistema de avaliações de produtos
- [ ] Wishlist / Lista de desejos
- [ ] Comparação de produtos
- [ ] Notificações em tempo real
- [ ] PWA (Progressive Web App)
- [ ] Internacionalização (i18n)
- [ ] Temas claro/escuro
- [ ] Acessibilidade (WCAG)

## 📝 Licença

Este é um projeto pessoal desenvolvido para fins educacionais.

## 👨‍💻 Autor

**Samuel**

- GitHub: github.com/Samucalaf
- LinkedIn: linkedin.com/in/samuel-lafuente/

---

⭐ Se este projeto foi útil para você, considere dar uma estrela no repositório!  

```sh
npm run lint
```
