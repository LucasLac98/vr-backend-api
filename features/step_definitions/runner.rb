Given('que o usuario faca uma consulta de um tipo de estabelecimento') do
    @get_url = 'https://portal.vr.com.br/api-web/comum/enumerations/VRPAT'
  end
  
  When('ele realizar a pesquisa') do
    @response = HTTParty.get(@get_url)
  end
  
  Then('deve ser retornado um dos tipos de estabelecimento') do
    expect(@response.code).to eq(200)
    expect(@response.body).to include('typeOfEstablishment')
    estabelecimentos = JSON.parse(@response.body)['typeOfEstablishment']
    puts estabelecimentos.sample
  end