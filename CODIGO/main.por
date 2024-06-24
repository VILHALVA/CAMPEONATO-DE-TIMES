programa
{
    funcao inicio()
    {
        cadeia time[3], campeao = "", ultimo = ""
        real ponto[3], maior = 0.0, menor = 0.0
        inteiro x

        escreva("Campeonato de Times\n\n")
        para (x = 0; x < 3; x++)
        {
            escreva("Informe o nome do time ", x + 1, ": ")
            leia(time[x])
            
            ponto[x] = lerPontuacao(time[x])
            se (x == 0)
            {
                maior = ponto[x]
                menor = ponto[x]
                campeao = time[x]
                ultimo = time[x]
            }
            senao
            {
                se (ponto[x] > maior)
                {
                    maior = ponto[x]
                    campeao = time[x]
                }

                se (ponto[x] < menor)
                {
                    menor = ponto[x]
                    ultimo = time[x]
                }
            }
        }
        escreva("\nCampeão: ", campeao, ". Total de pontos: ", maior, "\n")
        escreva("Último: ", ultimo, ". Total de pontos: ", menor, "\n")
    }

    funcao real lerPontuacao(cadeia nomeTime)
    {
        real pontuacao
        logico valido = falso

        enquanto (nao valido)
        {
            escreva("Informe a pontuação para o time ", nomeTime, ": ")
            leia(pontuacao)
            se (pontuacao >= 0)
            {
                valido = verdadeiro
            }
            senao
            {
                escreva("Pontuação inválida! A pontuação deve ser não negativa.\n")
            }
        }

        retorne pontuacao
    }
}
