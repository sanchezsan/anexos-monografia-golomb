<html>
<head>
<!-- WRITE BETWEEN THESE TAGS THE BROWSER WINDOW TITLE DISPLAYING THIS HTML PAGE -->
<!--<title>MATLAB_ASIGNACIONGOLOMB- Custom Component for MATLAB</title>-->
<!-- END OF BROWSER WINDOW TITLE *********************************************** -->

<!-- BEGIN FONT STYLE DEFINITION SECTION - DO NOT MODIFY THESE LINES -->
<style type="text/css">
<!-- BODY{font-family: Verdana, Arial, sans-serif;}
a:link{color: blue}
a:active{color: red}
a:visited{color: green}

h1, h2, h3{font-family: Verdana, Arial, sans-serif; font-weight: bold; color: rgb(0,0,153)}
h4{font-family: Verdana, Arial, sans-serif; font-weight: bold; color: black}
h1{ font-size: 20pt; margin-top: 0px; margin-bottom: 5px}
h2{ font-size: 18pt; margin-top: 15px; margin-bottom: 5px}
h3{ font-size: 12pt; margin-top: 12px; margin-bottom: 5px}
h4{ font-size: 12pt; margin-top: 12px; margin-bottom: 5px}
p{ font-size: 10pt; margin-top: 5px; margin-bottom: 5px}
cite{ font-size: 10pt; font-style: normal; margin-top: 5px; margin-bottom: 5px}

pre{font-family: Courier New, monospace; background-color: rgb(192,192,192); 
    color: rgb(0,0,0); margin-top: 5px; margin-bottom: 5px}

ol{font-family: Verdana, Arial, sans-serif; font-size: 10pt; margin-top: 0px; margin-bottom: 0px; 
    list-style-type: decimal; margin-left: 2em}
ul{font-family: Verdana, Arial, sans-serif; font-size: 10pt; margin-top: 0px; margin-bottom: 0px;
    list-style-type: square; margin-left: 1em}
li{margin-top: 5px; margin-bottom: 5px; text-indent: 0.15em}

td{ font-size: 10pt; margin-top: 10px; margin-bottom: 10px; padding-left: 5px} -->
</style>
<!-- END FONT STYLE DEFINITION SECTION ***************************** -->

</head>
<body bgcolor="#FFFFFF">

<h1>
<!-- WRITE HERE THE MAIN HEADING OF YOUR HTML PAGE -->
Mecanimos Dinámico (Asignación de canales a partir de Reglas de Golomb Óptimas)
<!-- END OF MAIN HEADING ************************* -->
</h1>

<!-- WRITE HERE THE COMPONENT DESCRIPTION THAT APPEARS ON THE "Choose Component for MATLAB" DIALOG WINDOW - WRITE THE TEXT WITHOUT CR! -->
<cite>
Ese repositorio contiene los archivos .m (MATLAB) para la asignación de canales desigualmente espaciados a partir de las Reglas de Golomb Óptimas, en la herramienta de simulación de sistemas ópticos OPTSIM. Donde el archivo VBS.m es el algoritmo madre que permite la asignación Golomb.
</cite>
<!-- END OF COMPONENT SHORT DESCRIPTION ********************************************************************************************** -->

<p>
<!-- WRITE HERE THE DETAILED COMPONENT DESCRIPTION -->
Esta co-simulación y los archivos pertinentes se crean a partir de la implementación de un modulo CCM (Componente Personalizado de MATLAB), el cual permite la generación de entradas y salidas ópticas (o eléctricas) para crear módulos personalizados según nuestras necesidades.
<!-- END OF DETAILED COMPONENT DESCRIPTION ******* -->
</p>

<h3>Entradas ópticas</h3>

<ul>
  <li>CH1 hasta CH'n' - entradas ópticas,
<!-- WRITE HERE THE INPUT SIGNAL DESCRIPTION -->
&lt;donde 'n' representa el número de canales del sistema óptico.&gt;
<!-- END OF INPUT SIGNAL DESCRIPTION ******* -->
</ul>

<h3>Outputs</h3>

<ul>
  <li>OutMux - salida óptica,
<!-- WRITE HERE THE OUTPUT SIGNAL DESCRIPTION -->
&lt;Salida multiplexada que contiene el array de frecuencias con asignación desigual.&gt;
<!-- END OF OUTPUT SIGNAL DESCRIPTION ******* -->
  </li>
</ul>

<h3>Parameters</h3>

<p><b>numeroCanales (Double)
[Unit]
:</b>
<!-- WRITE HERE THE PARAMETER DESCRIPTION -->
&lt;Se debe indicar el número de canales del sistema.&gt;
<!-- END OF PARAMETER DESCRIPTION ******* -->
<i>Valor mínimo:</i>
min <!-- WRITE HERE THE PARAMETER MIN VALUE -->
&lt;1&gt;
<!-- END OF PARAMETER MIN VALUE ******* -->
máximo: <!-- WRITE HERE THE PARAMETER MAX VALUE -->
&lt;28&gt;
<!-- END OF PARAMETER MAX VALUE ******* -->

; default 6
.</p>
<p><b>espaciadoCH (Double)
[THz]
:</b>
<!-- WRITE HERE THE PARAMETER DESCRIPTION -->
&lt;Espaciado base que implementa el algoritmo para la asignación desigual de canales.&gt;
<!-- END OF PARAMETER DESCRIPTION ******* -->
<i>Valor mínimo</i>
min <!-- WRITE HERE THE PARAMETER MIN VALUE -->
&lt;0.0125&gt;
<!-- END OF PARAMETER MIN VALUE ******* -->
max <!-- WRITE HERE THE PARAMETER MAX VALUE -->
&lt;0.1&gt;
<!-- END OF PARAMETER MAX VALUE ******* -->

; Por defecto 0.1
.</p>

</body>
</html>
