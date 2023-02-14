<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns:xs="http://www.w3.org/2001/XMLSchema"
                xmlns:array="http://www.w3.org/2005/xpath-functions/array"
                xmlns:map="http://www.w3.org/2005/xpath-functions/map"
                xmlns:math="http://www.w3.org/2005/xpath-functions/math"
                exclude-result-prefixes="#all"
                expand-text="yes"
                version="3.0">
  
  <xsl:output method="html" indent="yes"/>
  
  <xsl:template match="/" mode="#all">
    <html>
      <head>
        
      </head>
      <body>
        <table>
          <thead>
            <tr>
              <th>Titulo</th>
              <th>Autor</th>
              <th>FechaDevolución</th>
              <th>NombreUsuario</th>
              <th>ApellidoUsuario</th>
              <th>CodigoUsuario</th>
              <th>NombreEmpleado</th>
              <th>ApellidoEmpleado</th>
              <th>CodigoEmpleado</th>
              <th>FechaPréstamo</th>
              <th>FechaLímite</th>
            </tr>
          </thead>
          <tbody>
            <xsl:for-each select="//loan">
                <xsl:for-each select="books/book">
              <tr>
                  <td><xsl:value-of select="title"/></td>
                  <td><xsl:value-of select="author"/></td>
                  <td><xsl:value-of select="return_date"/></td>
                  <td><xsl:value-of select="../../user/name"/></td>
                  <td><xsl:value-of select="../../user/surname"/></td>
                  <td><xsl:value-of select="../../user/user_code"/></td>
                  <td><xsl:value-of select="../../librarian/name"/></td>
                  <td><xsl:value-of select="../../librarian/surname"/></td>
                  <td><xsl:value-of select="../../librarian/employee_code"/></td>
                  <td><xsl:value-of select="../../loan_date"/></td>
                  <td><xsl:value-of select="../../deadline"/></td>
              </tr>
                </xsl:for-each>
            </xsl:for-each>
          </tbody>
        </table>
        <button onclick="selectQuestion(0)">Titulos</button>
        <button onclick="selectQuestion(1)">Titulos</button>
        <button onclick="selectQuestion(2)">Titulos</button>
        <button onclick="selectQuestion(3)">Titulos</button>
        <button onclick="selectQuestion(4)">Titulos</button>
        <button onclick="selectQuestion(5)">Titulos</button>
        <button onclick="selectQuestion(6)">Titulos</button>
        <button onclick="selectQuestion(7)">Titulos</button>
        <button onclick="selectQuestion(8)">Titulos</button>
        <button onclick="selectQuestion(9)">Titulos</button>
        <div id="contenedor"></div>
        <script src="/js/library.js"></script>
      </body>
    </html>
  </xsl:template>
  
  
  
</xsl:stylesheet>