#!/bin/bash

#  genera dos directorios nuevos; el primero llamalo resultados_de_fasqc y el segundo llamado resultados_de_multiqc
#(siempre y cuando te encuentres en el directorio actual)

mkdir -p resultados resultados_multiqc

#Ejecuta la herramienta fastqc sobre todos los .fastq.gz que encuentres en el directorio donde se ejecute este scrip
#y vuarda los resultados en un directorio nuevo llamado  resultados
fastqc *.fastq.gz -o resultados

#Luego ejecuta la herramienta multiqc sobre los resultados de fastqc almacenados en el directorio resultados
multiqc resultados -o resultados_multiqc

#Imprime un mensaje que confirme que termino el script
echo "Se generaron los archivos.html exitosamente"
