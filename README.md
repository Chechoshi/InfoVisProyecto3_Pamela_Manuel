# InforVisProyecto2_Pamela_Manuel
Proyecto Programado 1 de Visualización de Información

######Técnica

**Este proyecto es sobre el esquema jerárquico, los esquemas jerárquicos son estructuras similares a las de un árbol, usando relaciones de padre-hijo, se clasifican los componentes de mayor a menor o viceversa, en este se pueden acomodar los datos en tema principal, subtemas y detalles.**

######Antecedentes
**Las estructuras jerárquicas fueron usadas en sistemas de gestión de datos, usadas para recetas índices ordenamientos, anidaciones y clasificaciones, esto debido a que son estructuras bastante eficientes para describir relaciones de los datos.**

######Parametros de configuración
**Son relaciones de padre e hijo, los hijos deben tener un padre y pueden tener multiples hijos, los padres e hijos están atados, el padre tendrá una lista de indicadores de cada uno de sus hijos, y usan estas reglas:**

**M: N, el caso en que un tipo de registros participa como hijo en más de un tipo VPH, pueden haber vínculos n-arios con más de dos registros participantes**

**Existen ciertas restricciones, que serian ningún registro esté relacionada con una ocurrencia de registro padre, con excepción de los registros raíz, no puede existir, no puede existir un registro hijo si no está enlazado con un registro padre, un registro hijo tiene que duplicarse si tiene dos o más registros padres, un registro se puede eliminar independientemente de su padre, pero eliminar un padre causa la eliminación de todos los hijos, un registro solo puede tener un padre real, los demás son virtuales.**

**Información adquirida de:**
[Office support](https://support.office.com/es-es/article/Obtener-informaci%C3%B3n-sobre-el-esquema-jer%C3%A1rquico-beda7357-b074-4c2b-887e-223ad2a9b2df) ,
[Alucard blogspot](http://alucard-base-de-datos.blogspot.com/2012/01/el-modelo-de-datos-jerarquico.html ) y
[educar.ec](http://www.educar.ec/edu/dipromepg/evaluacion/9.3.htm) 

######Prueba
[bl.ocks.org](http://bl.ocks.org/Chechoshi/1fae3a2f0c0935b4d6bdb6af826974cd)
