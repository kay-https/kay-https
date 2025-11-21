# Custom Emojis Collection

Esta coleção contém 66 emojis vetoriais em formato SVG, desenvolvidos com animações CSS nativas e gradientes lineares. Disponíveis em 6 variações de cores para diferentes contextos visuais.

## Cores Disponíveis

| Cor | Gradiente | Aplicação |
|-----|-----------|-----------|
| **Purple** | `#a855f7` → `#c084fc` | Tema padrão |
| **Blue** | `#3b82f6` → `#60a5fa` | Corporativo |
| **Green** | `#10b981` → `#34d399` | Sucesso/Aprovação |
| **Red** | `#ef4444` → `#f87171` | Alertas/Urgência |
| **Orange** | `#f97316` → `#fb923c` | Ação/Energia |
| **Pink** | `#ec4899` → `#f472b6` | Criativo/Design |

## Tipos Disponíveis

Total: 10 tipos × 6 cores = 60 arquivos

### Eye
Visualizações, métricas de views, monitoramento de acessos.

### Users
Seguidores, comunidade, colaboradores, membros de equipe.

### Target
Metas, objetivos, precisão, foco em resultados.

### Rocket
Lançamentos, deploys, performance, velocidade de desenvolvimento.

### Code
Desenvolvimento, programação, terminal, snippets de código.

### Sparkles
Novidades, destaques, features recentes, qualidade de código.

### Heart
Favoritos, curtidas, suporte da comunidade, contribuições.

### Star
Estrelas do GitHub, projetos destacados, qualidade.

### Fire
Trending topics, popularidade, streaks de contribuição.

### Lightning
Performance, otimização, velocidade, eficiência.

## Especificações Técnicas

### Gradientes
Cada ícone utiliza gradientes lineares com duas tonalidades para criar profundidade visual. Filtros feGaussianBlur aplicados para efeito de brilho sutil.

### Animações
Animações CSS nativas integradas ao SVG:
- **Eye**: Pupila pulsante (2s)
- **Users**: Fade alternado (3s)
- **Target**: Pulso radial (2s)
- **Rocket**: Flutuação vertical (2s)
- **Code**: Deslizamento horizontal (3s)
- **Sparkles**: Rotação 360° (4s)
- **Heart**: Batimento cardíaco (1s)
- **Star**: Rotação suave (3s)
- **Fire**: Movimento de chamas (2s)
- **Lightning**: Flash de opacidade (0.5s)

### Performance
- Tamanho: 1-2KB por arquivo
- ViewBox: 24×24 (totalmente escalável)
- Animações: GPU-accelerated
- Compatibilidade: Navegadores modernos (Chrome, Firefox, Safari, Edge)

## Implementação

### Markdown (GitHub)
```markdown
<!-- Tamanho padrão (20px) -->
<img src="./assets/emojis/purple-star.svg" width="20" alt="Star" />

<!-- Tamanho médio (28px) -->
<img src="./assets/emojis/blue-rocket.svg" width="28" alt="Rocket" />

<!-- Tamanho grande (40px) -->
<img src="./assets/emojis/green-heart.svg" width="40" alt="Heart" />
```

### URL Absoluta (Raw GitHub)
```markdown
<img src="https://raw.githubusercontent.com/DevYukis/.github/main/assets/emojis/purple-fire.svg" width="20" />
```

### Inline com Texto
```markdown
Projeto incrível <img src="./assets/emojis/orange-sparkles.svg" width="16" /> com automação!
```

### Em Badges
```markdown
![Custom](https://img.shields.io/badge/Custom-Emoji-a855f7?style=flat-square&logo=data:image/svg+xml;base64,...)
```

## Exemplos de Uso

### Estatísticas
```markdown
## 📊 Estatísticas

<img src="./assets/emojis/purple-eye.svg" width="18" /> **1.2k** visualizações  
<img src="./assets/emojis/purple-users.svg" width="18" /> **350** seguidores  
<img src="./assets/emojis/purple-star.svg" width="18" /> **89** estrelas
```

### Call-to-Action
```markdown
<img src="./assets/emojis/red-fire.svg" width="22" /> **Trending agora!**  
<img src="./assets/emojis/green-sparkles.svg" width="22" /> **Novo recurso disponível**  
<img src="./assets/emojis/orange-lightning.svg" width="22" /> **Performance 2x mais rápida**
```

### Headers de Seção
```markdown
## <img src="./assets/emojis/blue-rocket.svg" width="28" /> Quick Start
## <img src="./assets/emojis/purple-code.svg" width="28" /> Documentação
## <img src="./assets/emojis/pink-heart.svg" width="28" /> Contribuindo
```

## Geração Automatizada

Script PowerShell incluído para criar novas variações:

```powershell
.\generate-colors.ps1
```

Processo automatizado:
1. Leitura dos arquivos base (blue)
2. Substituição de códigos de cor
3. Atualização de IDs de gradientes
4. Geração de todos os arquivos

## Checklist de Implementação

| Tipo | Purple | Blue | Green | Red | Orange | Pink |
|------|--------|------|-------|-----|--------|------|
| Eye | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Users | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Target | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Rocket | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Code | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Sparkles | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Heart | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Star | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Fire | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |
| Lightning | ✓ | ✓ | ✓ | ✓ | ✓ | ✓ |

Total: 60 arquivos coloridos + 6 especiais = **66 SVGs**

## Referência de Cores

### Purple (Roxo)
```css
Gradiente: #a855f7 → #c084fc
Escuro: #7c3aed
Claro: #e0d4ff
```

### Blue (Azul)
```css
Gradiente: #3b82f6 → #60a5fa
Escuro: #1e40af
Claro: #dbeafe
```

### Green (Verde)
```css
Gradiente: #10b981 → #34d399
Escuro: #065f46
Claro: #d1fae5
```

### Red (Vermelho)
```css
Gradiente: #ef4444 → #f87171
Escuro: #991b1b
Claro: #fee2e2
```

### Orange (Laranja)
```css
Gradiente: #f97316 → #fb923c
Escuro: #9a3412
Claro: #ffedd5
```

### Pink (Rosa)
```css
Gradiente: #ec4899 → #f472b6
Escuro: #9f1239
Claro: #fce7f3
```

## Preview

Visualização interativa disponível em `../preview.html` (assets/preview.html).

```powershell
start ../preview.html
```

## Licença

Parte do projeto GITNPPP sob licença MIT. Uso, modificação e distribuição livres.

---

**GITNPPP** • DevYukis  
66 arquivos SVG • Atualizado em Novembro 2025
