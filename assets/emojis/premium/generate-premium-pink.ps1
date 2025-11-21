# Script para gerar emojis premium em rosa claro e suave
# Cores rosa pastel e suave para emojis fofos

$coresPremium = @{
    'rosa-claro' = @{
        'dark' = '#FFB6D9'      # Rosa claro suave
        'medium' = '#FFC8E3'    # Rosa pastel médio
        'light' = '#FFDAED'     # Rosa bem clarinho
        'accent' = '#FF8AC9'    # Rosa suave para acentos
    }
}

# Emojis roxos originais para converter
$emojisOriginais = @('eye', 'users', 'target', 'rocket', 'code', 'sparkles', 'heart', 'star', 'fire', 'lightning')
$emojisExtras = @('bulb', 'gamepad', 'graduation', 'joystick', 'palette', 'pencil')

$totalCriados = 0
$pastaOrigem = ".."

Write-Host "`n🎀 Gerando emojis premium em rosa claro suave..." -ForegroundColor Magenta

# Criar versões rosa claro dos emojis básicos
foreach ($emoji in $emojisOriginais) {
    $arquivoOrigem = Join-Path $pastaOrigem "purple-$emoji.svg"
    $arquivoDestino = "soft-pink-$emoji.svg"
    
    if (Test-Path $arquivoOrigem) {
        $conteudo = Get-Content $arquivoOrigem -Raw -Encoding UTF8
        
        # Substitui as cores roxas pelas cores rosa suave
        $conteudo = $conteudo -replace '#a855f7', $coresPremium['rosa-claro']['dark']
        $conteudo = $conteudo -replace '#c084fc', $coresPremium['rosa-claro']['light']
        $conteudo = $conteudo -replace '#7c3aed', $coresPremium['rosa-claro']['accent']
        $conteudo = $conteudo -replace '#8b5cf6', $coresPremium['rosa-claro']['medium']
        
        # Substitui IDs de gradientes
        $conteudo = $conteudo -replace 'purpleGrad', "softPinkGrad"
        $conteudo = $conteudo -replace 'purpleGlow', "softPinkGlow"
        
        # Salva o novo arquivo
        $conteudo | Out-File -FilePath $arquivoDestino -Encoding UTF8 -NoNewline
        
        Write-Host "  ✅ Criado: $arquivoDestino" -ForegroundColor Green
        $totalCriados++
    }
}

# Criar versões rosa claro dos emojis extras
foreach ($emoji in $emojisExtras) {
    $arquivoOrigem = Join-Path $pastaOrigem "purple-$emoji.svg"
    $arquivoDestino = "soft-pink-$emoji.svg"
    
    if (Test-Path $arquivoOrigem) {
        $conteudo = Get-Content $arquivoOrigem -Raw -Encoding UTF8
        
        # Substitui as cores roxas pelas cores rosa suave
        $conteudo = $conteudo -replace '#a855f7', $coresPremium['rosa-claro']['dark']
        $conteudo = $conteudo -replace '#c084fc', $coresPremium['rosa-claro']['light']
        $conteudo = $conteudo -replace '#7c3aed', $coresPremium['rosa-claro']['accent']
        $conteudo = $conteudo -replace '#8b5cf6', $coresPremium['rosa-claro']['medium']
        
        # Substitui IDs de gradientes
        $conteudo = $conteudo -replace 'purpleGrad', "softPinkGrad"
        $conteudo = $conteudo -replace 'purpleGlow', "softPinkGlow"
        
        # Salva o novo arquivo
        $conteudo | Out-File -FilePath $arquivoDestino -Encoding UTF8 -NoNewline
        
        Write-Host "  ✅ Criado: $arquivoDestino" -ForegroundColor Green
        $totalCriados++
    }
}

Write-Host "`n🎀 Processo concluído!" -ForegroundColor Magenta
Write-Host "💖 Total de emojis premium criados: $totalCriados arquivos" -ForegroundColor Yellow
Write-Host "🌸 Todos com cores rosa claro e suave!" -ForegroundColor Cyan
