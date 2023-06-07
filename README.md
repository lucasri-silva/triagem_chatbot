<html>
<body>
  <h1>Triage Chatbot</h1>
  <p>O Triagem Chatbot é um programa simples em Prolog projetado para fornecer níveis de triagem com base nos sintomas inseridos pelo usuário. Ele determina a gravidade dos sintomas e atribui um nível de triagem correspondente, o que pode ajudar a avaliar a urgência de atendimento médico necessário.</p>

  <h2>Como Funciona</h2>
  <p>O chatbot interage com o usuário por meio de uma interface de linha de comando. Ao ser executado, o chatbot solicita ao usuário que insira seus sintomas. O usuário pode inserir vários sintomas um por vez. Para encerrar a inserção dos sintomas, o usuário pode simplesmente digitar "fim".</p>

  <p>A gravidade de cada sintoma é predefinida no arquivo <code>sintomas_db.pl</code>, onde os sintomas são associados a níveis de gravidade: alto, médio ou baixo. O chatbot consulta esse arquivo para obter o nível de gravidade de cada sintoma inserido pelo usuário.</p>

  <p>Uma vez que todos os sintomas são inseridos, o chatbot calcula a gravidade geral com base nos sintomas inseridos usando o predicado <code>calcular_gravidade/2</code>. Esse predicado percorre recursivamente a lista de sintomas, obtém seus níveis de gravidade e os compara para determinar a gravidade geral.</p>

  <p>Por fim, o chatbot exibe o nível de triagem calculado para o usuário.</p>

  <h2>Utilização</h2>
  <ol>
    <li>Clone ou faça o download do repositório.</li>
    <li>Abra um terminal ou prompt de comando e navegue até o diretório onde os arquivos estão localizados.</li>
    <li>Inicie o interpretador Prolog digitando <code>prolog</code> ou o comando apropriado para o seu sistema.</li>
    <li>Carregue o arquivo <code>chatbot.pl</code> digitando <code>consult('chatbot.pl').</code></li>
    <li>Execute o chatbot digitando o predicado <code>chatbot/0</code> com o comando <code>chatbot.</code></li>
  </ol>

  <p>O chatbot solicitará que você insira seus sintomas um por vez. Digite o nome de cada sintoma e pressione Enter. Depois de inserir todos os seus sintomas, digite "fim" para encerrar. O chatbot exibirá o nível de triagem com base nos sintomas inseridos.</p>

  <h2>Personalização</h2>
  <p>Você pode personalizar as associações entre sintomas e gravidade modificando o arquivo <code>sintomas_db.pl</code>. Adicione ou remova sintomas conforme necessário e atribua a eles os níveis de gravidade apropriados: alto, médio ou baixo. Certifique-se de seguir o mesmo formato das associações existentes.</p>

  <p>Você também pode expandir a funcionalidade do chatbot adicionando regras e lógicas mais complexas para lidar com diferentes casos ou fornecer informações adicionais.</p>

  </body>
</html>
