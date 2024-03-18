Feature: Pesquisar Estabelecimentos
    Para verificar aleatoriamente um  dos Estabelecimentos 
    da VR 

    Scenario: Verificar aleatoriamente um estabelecimento 
     Given que o usuario faca uma consulta de um tipo de estabelecimento
     When ele realizar a pesquisa 
     Then deve ser retornado um dos tipos de estabelecimento
