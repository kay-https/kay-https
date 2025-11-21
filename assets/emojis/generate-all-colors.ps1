# Script para gerar todas as variacoes de cores dos emojis
# Baseado nos emojis roxos existentes

$cores = @{
    'blue' = @{
        'dark' = '#3b82f6'
        'light' = '#60a5fa'
    }
    'green' = @{
        'dark' = '#10b981'
        'light' = '#34d399'
    }
    'red' = @{
        'dark' = '#ef4444'
        'light' = '#f87171'
    }
    'orange' = @{
        'dark' = '#f97316'
        'light' = '#fb923c'
    }
    'pink' = @{
        'dark' = '#ec4899'
        'light' = '#f472b6'
    }
}

$emojis = @('eye', 'users', 'target', 'rocket', 'code', 'sparkles', 'heart', 'star', 'fire', 'lightning')

$totalCriados = 0

foreach ($cor in $cores.Keys) {
    Write-Host "`nCriando emojis na cor: $cor" -ForegroundColor Cyan
    
    foreach ($emoji in $emojis) {
        $arquivoOrigem = "purple-$emoji.svg"
        $arquivoDestino = "$cor-$emoji.svg"
        
        if (Test-Path $arquivoOrigem) {
            $conteudo = Get-Content $arquivoOrigem -Raw -Encoding UTF8
            
            # Substitui as cores roxas pelas cores da iteracao atual
            $conteudo = $conteudo -replace '#a855f7', $cores[$cor]['dark']
            $conteudo = $conteudo -replace '#c084fc', $cores[$cor]['light']
            $conteudo = $conteudo -replace '#7c3aed', $cores[$cor]['dark']
            $conteudo = $conteudo -replace '#8b5cf6', $cores[$cor]['dark']
            
            # Substitui IDs de gradientes para evitar conflitos
            $conteudo = $conteudo -replace 'purpleGrad', "${cor}Grad"
            $conteudo = $conteudo -replace 'purpleGlow', "${cor}Glow"
            
            # Salva o novo arquivo
            $conteudo | Out-File -FilePath $arquivoDestino -Encoding UTF8 -NoNewline
            
            Write-Host "  Criado: $arquivoDestino" -ForegroundColor Green
            $totalCriados++
        }
    }
}

Write-Host "`nProcesso concluido!" -ForegroundColor Green
Write-Host "Total de emojis criados: $totalCriados arquivos" -ForegroundColor Yellow
