# Estrurando o seu projeto .NET


## 🔤 Introdução

De acordo com a documentação oficial da Microsoft, **.NET** é *uma plataforma de desenvolvedor gratuita, multiplataforma e de software livre para a criação de muitos diferentes tipos de aplicativos. Com o .NET, você pode usar várias linguagens, editores e bibliotecas para criação para Web, dispositivo móvel, desktop, jogos e IoT.* Todas essas possibilidades trazidas por ela, desde linguagens e runtimes até bibliotecas e frameworks nos permitem estruturar projetos e construir nossas aplicações de maneira muito versátil. Porém, existem práticas, padrões e estilos de código que são comuns entre a comunidade de desenvolvimento e que são incentivados pela principal mantendedora da plataforma, A Microsoft.

Este projeto tem como a intenção de documentar e direcionar a estruturação de qualquer projeto com .NET, seguindo as principais práticas da comunidade juntamente alinhadas com recursos e documentações oficiais. 

Para isso, precisamos entender alguns conceitos, arquivos e configurações que podem compor o nosso projeto. Neste documento e projeto utilizaremos o .NET 5, última versão estável do SDK lançada até o momento e o Visual Studio Code, um editor de código open-source amplamente difundido na comunidade. Se você não utiliza o Visual Studio Code não se preocupe, seu projeto poderá ser utilizado em qualquer IDE ou editor de código.

Os principais comandos da estruturação do projeto serão executados em algum terminal de linha de comando, que podem ser o *CMD*, *Powershell*, *Bash*, *Zsh*, *Fish* entre muitos outros.

### 🏁 Por onde começar?

Para iniciarmos devemos entender os conceitos de **projeto** e **solução**.


#### Projeto

Os **projetos** armazenam os itens necessários para criação da aplicação, como arquivos de código-fonte, bitmaps, ícones e referências de componente e serviço. 

O .NET nos forncece modelos conhecidos como *templates*, que trazem arquivos e configurações básicas para o tipo de projeto que eles representam. Por exemplo, para um aplicativo de linha de comando temos o *template* `console`, para API's Web temos o `webapi`, para Blazor temos o `blazorwasm` ou `blazorserver` e para bibliotecas de classe temos o `classlib`. 

A comunidade também tem os próprios templates e distribuem na maioria das vezes através da **Nuget Gallery**.

#### Solução

A documentação da Microsoft nos diz que ela é ***um contêiner usado para organizar um ou mais projetos de código relacionados***, por exemplo, um projeto de biblioteca de classes e um projeto de teste correspondente. A solução representa toda a nossa aplicação que pode conter diversas partes (projetos) mas que no final compõe o todo que é o objetivo da aplicação.

Caso tenha em mente utilizar um único projeto não é necessário o uso de soluções, apesar de ser recomendado. Isso se dá devido a possibilidade de compilar e executar um projeto sem necessariamente haver uma solução. 

Porém, a partir do momento que se utiliza mais de um projeto faz-se necessária o uso da solução para que o seu editor ou IDE consiga enxergar e carregar esses projetos caso eles tenham ou não relação. Um exemplo comum é o caso de termos uma API Rest e um *client-side* como Blazor, que são projetos que não compartilham interações entre suas classes mas que pertencem a uma mesma aplicação.