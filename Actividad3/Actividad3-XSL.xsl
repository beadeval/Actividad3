<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
		<head>
			<title>Instituto Teconológico Edix</title>	
            <link rel="stylesheet" href="EstilosCSS.css" />
        </head>
        <body>
             <header>
                <h1 class="titulo">Instituto Tecnológico Edix</h1>
                <img src="./edix-formacion.png" class="imglogo"></img>
             </header>
               <nav>
                   <ul id="menu">
                     <li><a href="https://trabajaconnosotros.unir.net/" class="link"><xsl:value-of select="/ite/empresa"/></a></li>
                     <li><xsl:value-of select="/ite/telefono" class="link"/></li>
                     <li><a href="https://www.edix.com/es/" class="link">Para más información</a></li>
                     <li><a href="{ite/@web}" class="link">EDIX</a></li>
                   </ul>
               </nav>
        
               <section>
                 <h1>PROFESORES</h1>
                   <table>
                   <xsl:for-each select="/ite/profesores">
                      <tr>
                         <th>IDENTIFICADOR</th>
                         <th>NOMBRE</th>  
                      </tr>
                      <tr>
                         <td><xsl:value-of select="profesor[1]/id"/> </td>
                         <td><xsl:value-of select="profesor[1]/nombre"/></td> 
                      </tr>
                      <tr>
                         <td><xsl:value-of select="profesor[2]/id"/></td>
                         <td><xsl:value-of select="profesor[2]/nombre"/></td>   
                      </tr>
                      <tr>
                         <td><xsl:value-of select="profesor[3]/id"/></td>
                         <td><xsl:value-of select="profesor[3]/nombre"/></td>   
                      </tr>
                      <tr>
                         <td><xsl:value-of select="profesor[4]/id"/></td>
                         <td><xsl:value-of select="profesor[4]/nombre"/></td>   
                      </tr>
                   </xsl:for-each>
                   </table>
              
               </section>

               <section>
                 <h1>DIRECTOR</h1>
                   <table>
                   <xsl:for-each select="/ite/director">
                      <tr>
                         <th>NOMBRE</th>
                         <th>DESPACHO</th>   
                      </tr>
                      <tr>
                         <td><xsl:value-of select="nombre"/> </td>
                         <td><xsl:value-of select="despacho"/></td>   
                      </tr> 
                    </xsl:for-each>
                   </table>
               </section>

                <section>
                 <h1>JEFE DE ESTUDIOS</h1>
                   <table>
                   <xsl:for-each select="/ite/jefe_estudios">
                      <tr>
                         <th>NOMBRE</th>
                         <th>DESPACHO</th>   
                      </tr>
                      <tr>
                         <td><xsl:value-of select="nombre"/> </td>
                         <td><xsl:value-of select="despacho"/></td>   
                      </tr> 
                    </xsl:for-each>
                   </table>
               </section>

                <section>
                 <h1>CICLOS FORMATIVOS</h1>
                   <table>
                   <xsl:for-each select="/ite/ciclos/ciclo">
                      <tr>
                         <th>ID</th>
                         <th>NOMBRE</th>
                         <th>GRADO</th>
                         <th>AÑO DECRETO DEL TÍTULO</th>    
                      </tr>
                      <tr>
                         <td><xsl:value-of select="@id[1]"/> </td>
                         <td><xsl:value-of select="nombre[1]"/></td> 
                         <td><xsl:value-of select="grado[1]"/></td>
                         <td><xsl:value-of select="decretoTitulo[1]/@año"/></td>     
                      </tr> 
                      <tr>
                         <td><xsl:value-of select="@id[2]"/> </td>
                         <td><xsl:value-of select="nombre[2]"/></td> 
                         <td><xsl:value-of select="grado[2]"/></td>
                         <td><xsl:value-of select="decretoTitulo[2]/@año"/></td>      
                      </tr> 
                      <tr>
                         <td><xsl:value-of select="@id[3]"/> </td>
                         <td><xsl:value-of select="nombre[3]"/></td> 
                         <td><xsl:value-of select="grado[3]"/></td>
                         <td><xsl:value-of select="decretoTitulo[3]/@año"/></td>       
                      </tr> 
                      <tr>
                         <td><xsl:value-of select="@id[4]"/> </td>
                         <td><xsl:value-of select="nombre[4]"/></td> 
                         <td><xsl:value-of select="grado[4]"/></td>
                         <td><xsl:value-of select="decretoTitulo[4]/@año"/></td>      
                      </tr> 
                    </xsl:for-each>
                   </table>
               </section>

               <section>
                 <h2>CONTACTA CON NOSOTROS</h2>
                 <form action="contacto.jsp" method="post">
                 <fieldset>
                    <br/>
                    <br/>
                    <label for="nombre">*Nombre: </label>
                    <input id="nombre" type="text" name="nombre" />
                    <br/>
                    <br/>
                    <label for="apellidos">*Apellidos: </label>
                    <input id="apellidos" type="text" name="apellidos" />
                    <br/>
                    <br/>
                    <label for="fecha_nacimiento">*Seleccione su fecha de nacimiento: </label>
                    <input type="date" name="fecha_nacimiento"/>
                    <br/>
                    <br/>
                    <br/>
                    <label for="telefonoMovil">*Teléfono móvil: </label>
                    <input id="telefonoMovil" type="tel" name="telefonoMovil" />
                    <br/>
                    <br/>
                    <label for="email">*Email: </label>
                    <input id="email" type="text" name="email"/>
                    <br/>
                    <br/>
                    <label for="horario">*Indique su preferencia de horario: </label>
                    <br/>
                    <input type="radio" name="horario" value="mañana" />De 10:00 a 15:00<br />	
                    <input type="radio" name="horario" value="tarde" />De 16:00 a 20:00<br />	
                    <input type="radio" name="hoario" value="indiferente"/>Indiferente<br />
                    <br/>
                    <label for="observaciones">Indique brevemente el motivo de su solicitud: </label>
                    <br />	
                    <textarea style="resize: none;" rows="5" cols="80" name="observaciones"></textarea>
                    <br/>
                    <br/>
                    </fieldset>
                    </form>
                </section>


        </body>


</html>
</xsl:template>
</xsl:stylesheet>