# P-R-E-R-I-G-O ☠️

Modo inseguro : 

Permite todos os desafios potencialmente perigosos, independentemente de qualquer dano que possam causar ao executar em um ambiente em contêiner. ☠️ Use por sua conta e risco!

```yaml
challenges:
  safetyOverride: true
```

**Esta configuração não é recomendada em ambiente web mesmo em containers** desative alterando para `false` no arquivo de configuração [lovestickersnerd.yml](lovestickersnerd.yml)

Ao desativar esta opção alguns desafios não estarão mais disponíveis como `Stored XSS` e algumas falhas `SQL`.