# TMDB_Challenge

### Como começar
+ Clone o projeto
+ Cria uma branch principal com seuNome/main
+ Para cada feature, crie uma branch com seuNome/nomeFeature
+ Sempre crie pull requests para sua branch principal
+ Crie uma conta no site: https://developers.themoviedb.org/3/getting-started/introduction
+ Copie sua API_KEY e coloque no arquivo TMDB_Challenge/Networking/Config/Config.plist

### Development:
+ Ao abrir o projeto, renomeie o Bundle Identifier e mude o team dentro do projeto TMDB_Challenge em general e sign and capabilities respectivamente
+ Não utilizar Storyboard, utilizar XIB ou View Code
+ Caso queira, pode utilizar libs externas para contruir os elements de UI, como exemplo, SnapKit
+ Fique a vontade para utilizar Swift Package Manager, Carthage ou CocoaPods

### Desafios:
+ Crie o restante dos serviços que o app utilizará, utilize o que já está desenvolvido como base, fique atento as alterações necessárias.
+ Crie uma célula customizada que apresente a imagem do filme, seu nome e a data de estréia. A data de estréia deve ser formada em dia/mês/ano.
+ Criar a tela de detalhes e lá dentro apresentar todos os campos da struct Movie, sendo o título da viewcontroller de detalhes o nome do filme.
+ Usar alguma forma de cache para diminuir as requisições, caso seja possível.
+ Dar a opção de favoritar um filme na tela de detalhes.
+ Crie uma tela onde apresentará somente os filmes favoritos *utilize uma tabbar*, ordene-os por ordem de adição aos favoritos.
+ Ler na documentação e encontrar o nome do parametro que pode ser utilizado para alterar o idioma retornado.
+ Adicionar português brasileiro como idioma principal.
+ Adicionar o idioma do dispositivo como principal, leia na documentação da Apple como é possível conseguir.
+ Crie uma tela de configuração onde será possível apagar a cache armazenada.

### Extra!
+ Dentro da classe MovieViewModel, o método fetchUpcomingMovies faz as requisições dos filmes, entretanto há um parametro que é passado, para que serve? 
+ Crie uma extensão de UIImageView com um método chamado downloadImage em que será passado uma url e o mesmo deve baixar a imagem e utiliza-la.
+ Proponha melhorias, sempre é bom buscar novas formas de evoluir a aplicação.
