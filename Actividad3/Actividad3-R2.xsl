<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Le decimos que la salida va a ser otro XML-->
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <!-- Nos situamos en el nodo raiz-->
    <xsl:template match="/">
      <!-- Etiqueta centro_educativo como nuevo nodo raiz-->
     <centro_educativo>
       <!-- Etiqueta centro con el valor del elemtno empresa -->
          <centro><xsl:value-of select="ite/empresa"/></centro>
      <!-- Etiqueta contacto con el valor del elemento telefono -->
          <contacto><xsl:value-of select="ite/telefono"/></contacto>
      <!-- Etiqueta enlace con el valor del atributo web -->
          <enlace><xsl:value-of select="ite/@web"/></enlace>
      <!-- Creamos la etiqueta docentes -->
          <docentes>
           <!-- Recorremos todos los elementos profesor -->
             <xsl:for-each select="ite/profesores/profesor">
               <!-- Etiqueta docente con el valor del elemento profesor -->
                <docente><xsl:value-of select="profesor"/>
                  <!-- Etiqueta identificador con el valor del elemento id-->
                  <identificador><xsl:value-of select="id"/></identificador>
                  <!-- Etiqueta nombre_profesor con el valor del elemento nombre-->
                  <nombre_profesor><xsl:value-of select="nombre"/></nombre_profesor>
                </docente> 
             </xsl:for-each>
          </docentes>
      <!-- Creamos la etiqueta director_centro -->
          <director_centro>
           <!-- Recorremos todos los elementos director -->
            <xsl:for-each select="ite/director">
              <!-- Etiqueta nombre_director con el valor del elemento nombre -->
              <nombre_director><xsl:value-of select="nombre"/></nombre_director>
              <!-- Etiqueta despacho_director con el valor del elemento despacho-->
              <despacho_direccion><xsl:value-of select="despacho"/></despacho_direccion>
            </xsl:for-each>
          </director_centro>
      <!-- Creamos la etiqueta director_centro -->
          <jefatura>
            <!-- Recorremos todos los elementos jefe_estudios -->
            <xsl:for-each select="ite/jefe_estudios">
              <!-- Etiqueta nombre_jefatura con el valor del elemento nombre-->
              <nombre_jefatura><xsl:value-of select="nombre"/></nombre_jefatura>
              <!-- Etiqueta despacho_jefatura con el valor del elemento despacho-->
              <despacho_jefatura><xsl:value-of select="despacho"/></despacho_jefatura>
            </xsl:for-each>
         </jefatura>
      <!-- Creamos la etiqueta director_centro -->
          <ciclos_formativos>
           <!-- Recorremos todos los elementos ciclos -->
             <xsl:for-each select="ite/ciclos/ciclo">
              <!-- Etiqueta ciclo_formativo con el valor del elemento ciclo -->
                <ciclo_formativo><xsl:value-of select="ciclo"/>
                  <!-- Etiqueta identificar con el valor del atributo id-->
                  <identificador><xsl:value-of select="@id"/></identificador>
                  <!-- Etiqueta nombre_ciclo con el valor del elemento nombre-->
                  <nombre_ciclo><xsl:value-of select="nombre"/></nombre_ciclo>
                  <!-- Etiqueta grado_ciclo con el valor del elemento grado-->
                  <grado_ciclo><xsl:value-of select="grado"/></grado_ciclo>
                  <!-- Etiqueta decreto con el valor del elemnto decretoTitulo-->
                  <decreto><xsl:value-of select="decretoTitulo/@año"/></decreto>
                </ciclo_formativo> 
             </xsl:for-each>
          </ciclos_formativos>          
    </centro_educativo>
    </xsl:template>
</xsl:stylesheet>
