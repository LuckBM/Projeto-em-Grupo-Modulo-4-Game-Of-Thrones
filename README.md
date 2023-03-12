![image](https://user-images.githubusercontent.com/116355056/224568722-e1bae19e-028a-4074-885f-efffe0b2d8ef.png)

[![Typing SVG](https://readme-typing-svg.herokuapp.com/?color=000000&size=40&center=true&vCenter=true&width=1000&lines=+Modulo+-+4+Banco+de+Dados+GOT)](https://git.io/typing-svg)


# Objetivos do Projeto:

➤ Crie um repositório compartilhado com sua equipe para ser possível fazer o backup tanto do esquema do banco quanto das queries elaboradas.

➤ Ideação, sobre perguntas que podem ser respondidas pelos dados: análise o conjunto de dados selecionado para que as perguntas sejam pertinentes.

➤ Estruturar o esquema do banco de dados: A partir da avaliação do conjunto de dados fornecidos, modelar as tabelas do banco. Note que não é necessário mapear todas as colunas de todas as tabelas. Mantenha sua implementação simples construindo um modelo que atende às perguntas elaboradas pelo grupo.

➤ Realizar carga no banco: com base no esquema desenhado e criado, subir os dados presentes nos arquivos para o banco de dados a fim de verificar o funcionamento da solução encontrada.

➤ Criar visualizações dos dados com base nas perguntas elaboradas: aqui vocês podem usar planilhas (Excel).

➤ Montar uma apresentação a partir das perguntas e análise exploratória feita em cima do conjunto de dados selecionado.

# Tecnologias Usadas:

➤ MySQL

➤ Excel

➤ Canva

➤ Git

## Perguntas:

# Casas por Região:

- Gráfico:

![image](https://user-images.githubusercontent.com/116355056/224569719-0b40e1ce-26c4-43ba-897f-4751c994ec4d.png)

- Pesquisa no SQL:
```sh
SELECT region, COUNT(*) as count_houses
FROM houses
GROUP BY region;

```

# Duração total da série:

- Gráfico:

![image](https://user-images.githubusercontent.com/116355056/224569931-95e93764-aa16-4e71-82fe-506803acda1a.png)

- Pesquisa no SQL:
```sh

SELECT episode, season, title, duration
FROM episodes
ORDER BY season, episode;

```



- Slide de apresentação: [Aqui](https://www.canva.com/design/DAFc7nvAnZk/p6SQz8F1cndMqH8L73sYDQ/view?utm_content=DAFc7nvAnZk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)





# Modelo Lógico:
![modelo_logicom4](https://user-images.githubusercontent.com/115815559/224511009-c0b4487f-05d3-45f7-a1ef-b73a30a4b0cf.png)


