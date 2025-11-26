# 📁 Estrutura do Projeto - Guia de Referência

## 🗂️ Organização de Diretórios

```
src/
├── assets/              # Recursos estáticos
│   ├── icons/          # Ícones e SVGs
│   ├── images/         # Imagens da aplicação
│   └── styles/         # Estilos globais
│       └── main.css    # CSS global com Tailwind
│
├── router/             # 🔀 Configuração de rotas
│   └── index.ts        # ✅ Vue Router configurado
│
├── services/           # 🔌 Serviços de API
│   ├── api.ts          # ✅ Configuração Axios + interceptors
│   ├── authService.ts  # ✅ Serviços de autenticação
│   ├── categoryService.ts # ✅ Serviços de categorias
│   ├── orderService.ts # ✅ Serviços de pedidos
│   ├── productService.ts # ✅ Serviços de produtos
│   └── userService.ts  # ✅ Serviços de usuário
│
├── stores/             # 🗃️ Gerenciamento de estado (Pinia)
│   ├── auth.ts         # ✅ Store de autenticação
│   ├── cart.ts         # ✅ Store do carrinho
│   ├── category.ts     # ✅ Store de categorias
│   ├── orders.ts       # ✅ Store de pedidos
│   └── products.ts     # ✅ Store de produtos
│
├── types/              # 📝 Definições TypeScript
│   ├── Auth.ts         # ✅ Tipos de autenticação
│   ├── Cart.ts         # ✅ Tipos do carrinho
│   ├── Category.ts     # ✅ Tipos de categoria
│   ├── Order.ts        # ✅ Tipos de pedido
│   ├── Product.ts      # ✅ Tipos de produto
│   ├── User.ts         # ✅ Tipos de usuário
│   └── index.ts        # ✅ Export centralizado
│
├── views/              # 📄 Páginas/rotas da aplicação
│   ├── CartView.vue           # ✅ Página do carrinho
│   ├── CategoriesView.vue     # ✅ Página de categorias
│   ├── CheckoutView.vue       # ✅ Página de checkout
│   ├── HomeView.vue           # ✅ Página inicial
│   ├── LoginView.vue          # ✅ Página de login
│   ├── OrdersView.vue         # ✅ Página de pedidos
│   ├── ProductDetailView.vue  # ✅ Detalhes do produto
│   ├── ProductListView.vue    # ✅ Lista de produtos
│   ├── ProfileView.vue        # ✅ Página de perfil
│   └── RegisterView.vue       # ✅ Página de registro
│
├── __tests__/          # 🧪 Testes unitários
│   └── App.spec.ts     # Testes do componente App
│
├── App.vue             # 🎯 Componente raiz
└── main.ts             # 🚀 Entry point
```

## ✅ Arquivos Criados e Configurados

### Configuração Base
- ✅ Estrutura de pastas criada
- ✅ `src/assets/styles/main.css` - Estilos globais com Tailwind

### Types (TypeScript)
- ✅ `Auth.ts` - Tipos de autenticação (Login, Register, etc.)
- ✅ `Cart.ts` - Tipos do carrinho (CartItem, Cart)
- ✅ `Category.ts` - Tipos de categoria
- ✅ `Order.ts` - Tipos de pedido (Order, OrderItem, status)
- ✅ `Product.ts` - Tipos de produto
- ✅ `User.ts` - Tipos de usuário (User, Address, etc.)
- ✅ `index.ts` - Export centralizado de todos os tipos

### Stores (Pinia)
- ✅ `auth.ts` - Gerenciamento de autenticação e usuário
- ✅ `cart.ts` - Gerenciamento do carrinho
- ✅ `category.ts` - Gerenciamento de categorias
- ✅ `orders.ts` - Gerenciamento de pedidos
- ✅ `products.ts` - Gerenciamento de produtos

### Services
- ✅ `api.ts` - Configuração base do Axios
- ✅ `authService.ts` - Serviços de autenticação
- ✅ `categoryService.ts` - Serviços de categorias
- ✅ `orderService.ts` - Serviços de pedidos
- ✅ `productService.ts` - Serviços de produtos
- ✅ `userService.ts` - Serviços de usuário

### Views
- ✅ `CartView.vue` - Página do carrinho
- ✅ `CategoriesView.vue` - Página de categorias
- ✅ `CheckoutView.vue` - Página de checkout
- ✅ `HomeView.vue` - Página inicial
- ✅ `LoginView.vue` - Página de login
- ✅ `OrdersView.vue` - Página de pedidos
- ✅ `ProductDetailView.vue` - Detalhes do produto
- ✅ `ProductListView.vue` - Lista de produtos
- ✅ `ProfileView.vue` - Página de perfil
- ✅ `RegisterView.vue` - Página de registro

### Router
- ✅ `router/index.ts` - Todas as rotas configuradas com guards de autenticação

## 🎯 Como Usar

### 1. Fazer uma requisição à API

```typescript
import { productService } from '@/services/productService'

const products = await productService.getAll()
const product = await productService.getById('123')
```

### 2. Usar uma store

```typescript
import { useCartStore } from '@/stores/cart'
import { useAuthStore } from '@/stores/auth'

const cartStore = useCartStore()
const authStore = useAuthStore()

// Adicionar ao carrinho
cartStore.addItem(product, 2)

// Verificar autenticação
if (authStore.isAuthenticated) {
  // Usuário logado
}
```

### 3. Importar tipos

```typescript
import type { Product, User, Order } from '@/types'

const product: Product = {
  id: '1',
  name: 'Produto',
  price: 99.90,
  // ...
}
```

### 4. Criar novas views

Todas as páginas ficam em `src/views/` e são automaticamente
carregadas pelas rotas definidas em `src/router/index.ts`.

```vue
<script setup lang="ts">
import { ref, onMounted } from 'vue'
import { useProductsStore } from '@/stores/products'

const productsStore = useProductsStore()

onMounted(async () => {
  await productsStore.fetchProducts()
})
</script>

<template>
  <div class="container mx-auto px-4 py-8">
    <h1 class="text-3xl font-bold">Produtos</h1>
    <!-- Seu conteúdo aqui -->
  </div>
</template>
```

## 🔐 Autenticação

O fluxo de autenticação está implementado:

1. **Store de Auth**: `stores/auth.ts` gerencia estado de autenticação
2. **Auth Service**: `services/authService.ts` faz chamadas à API
3. **Router Guards**: Proteção de rotas em `router/index.ts`
4. **Views**: `LoginView.vue` e `RegisterView.vue` prontas

## 🛒 Carrinho

O carrinho está estruturado:

1. **Store de Cart**: `stores/cart.ts` gerencia itens
2. **View**: `CartView.vue` para exibir carrinho
3. **Checkout**: `CheckoutView.vue` para finalizar compra

## 📦 Próximos Passos

Agora você pode começar a desenvolver:

1. **Implementar lógica nas stores** (auth, cart, products, etc.)
2. **Desenvolver as views** com componentes e layouts
3. **Criar componentes reutilizáveis** conforme necessário
4. **Integrar com API backend** usando os services
5. **Adicionar validações e tratamento de erros**
6. **Estilizar com Tailwind CSS**

## 🚀 Variáveis de Ambiente

Configure no arquivo `.env`:

```env
VITE_API_URL=http://localhost:3000/api
```

## 📚 Stack Tecnológica

- **Vue 3** (v3.5.22) - Framework frontend
- **TypeScript** (v5.9) - Tipagem estática
- **Pinia** (v3.0.3) - Gerenciamento de estado
- **Vue Router** (v4.6.3) - Roteamento
- **Axios** (v1.13.2) - Cliente HTTP
- **Tailwind CSS** (v4.1.17) - Framework CSS
- **Vite** (v7.1.11) - Build tool
- **Vitest** (v3.2.4) - Framework de testes

---

**Estrutura simplificada e pronta para desenvolvimento! 🎉**
