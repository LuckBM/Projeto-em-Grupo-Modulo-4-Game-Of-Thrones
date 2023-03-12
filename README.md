![image](https://user-images.githubusercontent.com/116355056/224568722-e1bae19e-028a-4074-885f-efffe0b2d8ef.png)

[![Typing SVG](https://readme-typing-svg.herokuapp.com/?color=000000&size=40&center=true&vCenter=true&width=1000&lines=+Modulo+-+4+Banco+de+Dados+(GOT))](https://git.io/typing-svg)


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

➤ CSV 



## Perguntas:

## Gráficos:

# 1 - Casas por Região

![image](https://user-images.githubusercontent.com/116355056/224569719-0b40e1ce-26c4-43ba-897f-4751c994ec4d.png)

# 2 - Duração total da série

![image](https://user-images.githubusercontent.com/116355056/224569931-95e93764-aa16-4e71-82fe-506803acda1a.png)

# 3 - Duração de cada episódio

![image](https://user-images.githubusercontent.com/116355056/224571441-641981c0-4df9-41ca-89f6-65c3527ac909.png)

# 4 - Episódios mais votados

![image](https://user-images.githubusercontent.com/116355056/224571458-d2e3c237-1629-4ca2-ac23-ab4ecfa9f749.png)

# 5 - Episodios por Temporada

![image](https://user-images.githubusercontent.com/116355056/224571496-38a4b09f-98d5-46a8-adb0-6cdcea6e4c77.png)

# 6 - Maior quantia de Aparições

![image](https://user-images.githubusercontent.com/116355056/224573162-af97235f-b983-4745-b83c-4719b04cb8d2.png)

# 7 - Review dos Críticos

![image](https://user-images.githubusercontent.com/116355056/224573209-e259f123-55ca-4841-a6c7-70ccaf375d6b.png)

# 8 - Review dos Usuários

![image](https://user-images.githubusercontent.com/116355056/224573223-0424cbe6-6d90-47b7-ab61-bc0bbd317618.png)

# 9 - Diretor que mais Participou

![image](https://user-images.githubusercontent.com/116355056/224575696-5f3a9120-d810-4b49-a9c4-d29cd9b85c4c.png)

# 10 - Classificação de cada episódio

![image](https://user-images.githubusercontent.com/116355056/224575732-4f9f3876-80c5-4e9e-b234-3d75f9f9aa39.png)

## Pesquisa no SQL:

# 1 - Casas por Região
```sh
SELECT region, COUNT(*) as count_houses
FROM houses
GROUP BY region;
```
- Essa consulta irá retornar o nome de cada região na tabela e o número de casas correspondente a essa região.

# 2 - Duração total da série
```sh
SELECT SUM(duration) as total_duration
FROM episodes;
```
- Essa consulta irá retornar a soma total de todas as durações dos episódios da tabela "episodes"

# 3 - Duração de cada episódio
```sh

SELECT episode, season, title, duration
FROM episodes
ORDER BY season, episode;

```
- Essa consulta irá retornar a lista de episódios ordenados primeiro pela temporada e depois pelo número do episódio dentro da temporada.

- Se você quiser filtrar a duração total por temporada, pode adicionar a cláusula WHERE para filtrar apenas os episódios de uma temporada específica. Por exemplo, para obter a duração total da primeira temporada. Exemplo:

```sh
SELECT SUM(duration) as total_duration
FROM episodes
WHERE season = 1;
```

# 4 - Episódios mais Votados
```sh
SELECT episode, season, title, duration, votes
FROM episodes
ORDER BY votes DESC
LIMIT 10;
```
- Essa consulta irá retornar os 10 episódios mais votados da primeira temporada, em ordem decrescente. Caso queira que apareça mais, substitua o limite para o número desejado. 

# 5 - Episódios por Temporada

```sh
SELECT season, COUNT(*) as episode_count
FROM episodes
GROUP BY season;

```
- Essa consulta irá retornar uma tabela com duas colunas: "season" e "episode_count", onde "season" representa o número da temporada e "episode_count" representa a quantidade de episódios para cada temporada.

# 6 - Maior quantia de Aparições

```sh
SELECT character_actor, actor, episodes_appeared
FROM characters
ORDER BY episodes_appeared DESC
LIMIT 1;
```
- Essa consulta irá retornar uma linha com o nome do ator que interpretou o personagem com mais aparições e a quantidade de aparições. Caso queira mais atores, altere o limite para o número desejado.

# 7 - Review dos Críticos

```sh
SELECT title, critics_reviews
FROM episodes;
```
- Essa consulta retorna a Review dos críticos


# 8 - Review dos Espectadores

```sh
SELECT title, critics_viewers
FROM episodes;
```
- Essa consulta retorna a Review dos Espectadores

# 9 - Diretor que mais Participou
```sh
SELECT director, COUNT(*) as episode_count
FROM episodes
GROUP BY director
ORDER BY episode_count DESC
LIMIT 1;
```
- Essa consulta retorna o diretor que mais participou da série. Caso queira que apareça os demais, substitua o limite para o número desejado. 

# 10 - Classificação de cada episódio
```sh
SELECT title, rating
FROM episodes;
```
- Essa consulta retorna a classificação de cada episódio.















# Modelo Lógico do Banco de Dados:
![modelo_logicom4](https://user-images.githubusercontent.com/115815559/224511009-c0b4487f-05d3-45f7-a1ef-b73a30a4b0cf.png)


# Slide de apresentação: [Aqui](https://www.canva.com/design/DAFc7nvAnZk/p6SQz8F1cndMqH8L73sYDQ/view?utm_content=DAFc7nvAnZk&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton)


