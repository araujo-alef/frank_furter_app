# Mark Furter

A Frankfurter API é uma API fornecida para conversão de moedas, a proposta deste exercício é criar um aplicativo que consuma este serviço para obter as opções de moedas disponíveis, ao obter os tipos de moedas o usuário deverá selecionar o tipo de moeda que será convertida, logo em seguida selecionar o tipo de moeda que será o resultado da conversão, ao selecionar estas informações o aplicativo deve retornar o resultado desta conversão. A interface do aplicativo é de livre escolha do desenvolvedor, entretanto deve possuir um visual agradável e limpo, o desenvolvedor está livre para escolher qual gerência de estado prefere usar, DESDE QUE NAO SEJA “SETSTATE”, pode ser usado mvc ou mvvm como arquitetura.os endpoints para obtenção dos dados estão disponíveis logo abaixo.
Endereço da API: https://api.frankfurter.app
Documentação da API: https://www.frankfurter.app/docs/
Exemplos dos Endpoints:

## Currencies
This endpoint gets a list of available currency symbols along with their full names.

```sh
GET /currencies HTTP/1.1
```

## Deployment
If you prefer to self-host, you can install Frankfurter in a few minutes.

## Conversion
You can convert any value between currencies using the above endpoints in combination with the amount parameter.
Below, we convert 10 British Pounds to US Dollars.

```sh
const host = 'api.frankfurter.app';
fetch(`https://${host}/latest?amount=10&from=GBP&to=USD`)
    .then(resp => resp.json())
    .then((data) => {
    alert(`10 GBP = ${data.rates.USD} USD`);
    }
);
```

### Frank Furter
- Escolha o tipo de moeda que você quer converter
- Para qual moeda será convertida
- Digite o valor
- ✨Magic ✨

![Screenshot](https://github.com/araujo-alef/frank_furter_app/blob/main/assets/screenshot/converted_page.jpg)
![Screenshot](https://github.com/araujo-alef/frank_furter_app/blob/main/assets/screenshot/converted_performed.jpg)
![Screenshot](https://github.com/araujo-alef/frank_furter_app/blob/main/assets/screenshot/list_currency.jpg)
