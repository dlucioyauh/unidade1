

# Projeto Unidade 1 - Sistemas Cliente/Servidor

Este projeto foi desenvolvido como parte do estudo de Sistemas Cliente/Servidor. Ele consiste na criação de um servidor Apache Tomcat, a configuração do servidor no Eclipse e o desenvolvimento de um sistema simples em JSP para coletar e exibir informações de um estudante.

## Estrutura do Projeto

```bash
.
├── build
│   └── classes
├── src
│   └── main
│       └── java
└── WebContent
    ├── estudante-response.jsp
    ├── index.jsp
    ├── META-INF
    │   └── MANIFEST.MF
    └── WEB-INF
        ├── lib
        └── web.xml
```

### Arquivos Principais

- **index.jsp**: Página inicial onde o usuário insere seu nome e RGM (Registro Geral do Aluno).
- **estudante-response.jsp**: Página de resposta que recebe e exibe os dados inseridos pelo usuário, juntamente com a última atualização da hora.

### Tecnologias Utilizadas

- **Java (JSP)**: Para renderizar páginas dinâmicas no servidor.
- **Apache Tomcat 9.0.96**: Servidor responsável por hospedar o projeto e servir as páginas JSP.
- **Eclipse IDE**: Ambiente de desenvolvimento integrado utilizado para configuração e execução do servidor.

### Como Rodar o Projeto

1. Clone o repositório para sua máquina:

   ```bash
   git clone https://github.com/seu-usuario/unidade1-sistemas-cliente-servidor.git
   ```

2. Importe o projeto no Eclipse:
   - File > Import > Existing Projects into Workspace
   - Selecione a pasta do projeto clonado.

3. Configure o servidor Tomcat no Eclipse:
   - Vá em "Servers" > "New" > "Server".
   - Selecione a versão do Apache Tomcat instalada e adicione o projeto.

4. Execute o projeto:
   - Clique com o botão direito no servidor configurado e selecione "Start".
   - Acesse o sistema através do navegador em: `http://localhost:8080/unidade1/`.

### Funcionamento

1. O usuário acessa a página **index.jsp** e preenche o nome e o RGM.
2. Ao submeter o formulário, os dados são enviados via método POST para a página **estudante-response.jsp**.
3. A página **estudante-response.jsp** exibe o nome, RGM e a última atualização do horário gerada pelo servidor.

### Exemplo de Código

**index.jsp**

```jsp
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
    .cor{
        color:red;
    }
</style>
<meta charset="UTF-8">
<title><% out.println("Unidade 1"); %></title>
</head>
<body>
    <form action="estudante-response.jsp" method="post">
        Nome: <input type="text" name="nome" class="cor"/>
        <br/><br/>
        RGM: <input type="text" name="rgm"/>
        <br/><br/>
        <input type="submit" value="Enviar"/>
    </form>
</body>
</html>
```

**estudante-response.jsp**

```jsp
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Confirmação do Estudante</title>
</head>
<body>
    Aluno: <%=request.getParameter("nome") %>
    <br/>
    RGM: <%=request.getParameter("rgm") %>
    <br/>
    <p align="center">
        Última atualização: 
        <%
            Calendar calendar = new GregorianCalendar();
            String am_pm;
            int hour = calendar.get(Calendar.HOUR);
            int minute = calendar.get(Calendar.MINUTE);
            int second = calendar.get(Calendar.SECOND);

            if(calendar.get(Calendar.AM_PM)==0){
                am_pm = "AM";
            }else{
                am_pm = "PM";
            }

            String CT = hour + ":" + minute + ":" + second + " " + am_pm;
            out.print(CT);
        %>
    </p>
</body>
</html>
```

### Conclusão

Este projeto foi uma introdução prática ao desenvolvimento de sistemas cliente/servidor utilizando JSP e o servidor Tomcat. A configuração do servidor, juntamente com a construção de páginas dinâmicas, proporciona uma base sólida para projetos mais avançados no futuro.

### Autor
```go
Douglas Lucio - IonKod
```

