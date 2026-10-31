<h1 style="color: #2E86C1; font-size: 32px; text-align: center;">
  DISEÑO DE LA ESPECIFICACIÓN DE REQUISITOS DE SOFTWARE
</h1>

**INSTITUCIÓN:** Servicio Nacional de Aprendizaje (SENA)  
**CENTRO:** Centro de Procesos Industriales y de la Construcción (CPIC) - Regional Caldas  
**TÉCNICO:** Tecnólogo en Análisis y Desarrollo de Software (ADSO)  
**FASE:** Primer Trimestre  
**TIPO DE FORMACIÓN:** Tecnológica  
**FECHA DE ENTREGA:** 22 de Junio de 2026

---

<h1 style="font-size: 18px"> 

**FECHA**: 22/06/2026

**REVISIÓN(ES)**: Creación y estructuración del documento base
 
**AUTOR(ES)**: Juan Diego Rios Giraldo 

<h1 style="color: #2E86C1; font-size: 18px;">
Documento validado por las partes en fecha: 22/06/2026
</h1>

| POR CLIENTE | DESARROLLADOR |
|-------------|---------------|
| FECHA: 22/06/2026 | FECHA: 22/06/2026 |
| NOMBRE DEL ENCARGADO: **Jose Germán Estrada Clavijo** | NOMBRE DEL ENCARGADO: **Juan Diego Rios Giraldo** |

---

1. **INTRODUCCIÓN**  
   1.1. OBJETIVO GENERAL  
   1.2. OBJETIVOS ESPECÍFICOS  
   1.3. PROPÓSITO  
   1.4. ALCANCE  
   1.5. PERSONAL INVOLUCRADO  
   1.6. DEFINICIONES, ACRÓNIMOS Y ABREVIATURAS  
   1.7. REFERENCIAS  
   1.8. RESUMEN  

2. **DESCRIPCIÓN GENERAL**  
   2.1. PERSPECTIVA DEL PRODUCTO  
   2.2. FUNCIONALIDADES DEL PRODUCTO  
   2.3. CARACTERÍSTICAS DE LOS USUARIOS  
   2.4. RESTRICCIONES  

3. **REQUISITOS ESPECÍFICOS**  
   3.1. REQUISITOS DEL SISTEMA  
   3.2. REQUISITOS FUNCIONALES  
   3.3. REQUISITOS NO FUNCIONALES  

4. **VALIDACIÓN DE REQUISITOS**  
   4.1. CONSTRUCCIÓN DE PROTOTIPOS  
   4.2. FORMATO DE CASO DE PRUEBA  

---

<h1 style="color: #2E86C1; font-size: 18px">
1. INTRODUCCIÓN
</h1>

BMS Coffee Bar es un establecimiento de alto enfoque cultural que combina la experiencia de un coffee bar especializado con una dinámica programación musical. Actualmente, la operación se maneja de forma manual o con herramientas ofimáticas básicas, lo que genera ineficiencias en el control de inventarios, gestión de ventas, programación musical, atención al cliente y análisis de rentabilidad. El presente documento describe la especificación de requisitos de software para desarrollar un sistema integral que automatice y optimice todos los procesos operativos, administrativos y de experiencia del cliente de BMS Coffee Bar.

<h1 style="color: #2E86C1; font-size: 18px">
1.1 OBJETIVO GENERAL
</h1>

Desarrollar un sistema de gestión integral para BMS Coffee Bar que automatice y optimice los procesos de inventario, punto de venta, gestión de clientes, programación musical, eventos, recursos humanos, análisis de datos y atención al cliente, mejorando la eficiencia operativa y la experiencia del usuario.

### 1.2. OBJETIVOS ESPECÍFICOS

- **OE1:** Implementar un módulo de inventario que permita gestionar insumos categorizados (café de especialidad, licores premium, repostería, insumos de coctelería) con atributos específicos, control de caducidad, trazabilidad y alertas de stock mínimo.

- **OE2:** Desarrollar un punto de venta (POS) táctil, rápido e intuitivo, optimizado para tablets, con gestión de mesas, división de cuentas, múltiples formas de pago y facturación electrónica.

- **OE3:** Crear un módulo de CRM que permita segmentar clientes por preferencias musicales, historial de consumo y eventos, con comunicaciones automatizadas y programa de fidelización.

- **OE4:** Implementar un sistema de gestión de eventos y programación musical que permita calendarizar días temáticos, gestionar artistas/DJs, control de aforo y venta de entradas.

- **OE5:** Desarrollar un módulo de reportes y analítica que integre datos de ventas, música, satisfacción del cliente y productividad del personal.

### 1.3. PROPÓSITO

El software tiene como finalidad transformar la operación de BMS Coffee Bar mediante la automatización de procesos críticos, la mejora en la toma de decisiones basada en datos y la personalización de la experiencia del cliente. El sistema permitirá:

- Optimizar el control de inventarios y reducir mermas y pérdidas.
- Agilizar el proceso de venta y facturación.
- Fortalecer la relación con los clientes a través de estrategias de fidelización.
- Potenciar la programación musical como eje diferenciador del negocio.
- Facilitar la gestión de eventos y la contratación de talento.
- Proporcionar insights estratégicos para la toma de decisiones gerenciales.

### 1.4. ALCANCE

El software abarcará las siguientes áreas funcionales dentro de BMS Coffee Bar:

- **Gestión de Inventarios:** Control de insumos, productos y activos fijos con categorización, atributos específicos, control de caducidad, trazabilidad FIFO, gestión de proveedores, órdenes de compra, control de mermas e inventario por ubicación física.

- **Punto de Venta (POS):** Interfaz táctil, gestión de mesas (apertura/cierre/transferencia), división de cuentas, comandas por área (barra, cocina, coctelería), promociones programadas, combos, múltiples formas de pago, propinas, caja chica, cierre de caja y facturación electrónica.

- **CRM y Gestión de Clientes:** Captura de clientes multicanal, segmentación por preferencias musicales, historial de consumo, programa de fidelización, gestión de PQRS, reservas, listas de espera y comunicaciones automatizadas.

- **Eventos y Programación Musical:** Gestión de playlists por día y hora, contratación de artistas/DJs, control de regalías (Sayco/Acinpro), venta de entradas, control de aforo, historial de eventos y difusión multicanal.

- **Recursos Humanos:** Control de asistencia, gestión de horarios flexibles, comisiones, evaluaciones de desempeño, gestión de capacitaciones, roles y permisos, y comunicación interna.

- **Reportes y Analítica:** Dashboards integrales, reportes de ventas, rentabilidad por evento, análisis de satisfacción, rotación de mesas, análisis de preferencias musicales, exportación en múltiples formatos y programación de reportes automáticos.

- **Atención al Cliente:** Gestión de reservas, listas de espera, chat en vivo, encuestas de satisfacción, NPS, gestión de quejas y sugerencias, y personalización de la experiencia.

### 1.5. PERSONAL INVOLUCRADO

| **NOMBRE** | Juan Diego Rios Giraldo |
|---|---|
| **ROL** | Desarrollador de Software / Analista |
| **PROFESIÓN** | Aprendiz SENA - Tecnólogo en Análisis y Desarrollo de Software |
| **RESPONSABILIDADES** | Elicitación de requisitos, análisis de requerimientos, modelado del sistema, documentación SRS, diseño de casos de prueba y prototipado |
| **INFORMACIÓN DE CONTACTO** | juandiegoriosgiraldo@gmail.com |
| **APRUEBA** | SI |

### 1.6. DEFINICIONES, ACRÓNIMOS Y ABREVIATURAS

| **TÉRMINO** | **DEFINICIÓN** |
|---|---|
| **ADSO** | Análisis y Desarrollo de Software - Tecnología del SENA |
| **API** | Application Programming Interface - Interfaz de programación de aplicaciones |
| **BI** | Business Intelligence - Inteligencia de negocios |
| **CRM** | Customer Relationship Management - Gestión de relaciones con clientes |
| **FIFO** | First In, First Out - Método de rotación de inventario |
| **IEEE** | Institute of Electrical and Electronics Engineers |
| **KPI** | Key Performance Indicator - Indicador clave de desempeño |
| **NPS** | Net Promoter Score - Índice de satisfacción del cliente |
| **POS** | Point of Sale - Punto de venta |
| **PQRS** | Peticiones, Quejas, Reclamos y Sugerencias |
| **SENA** | Servicio Nacional de Aprendizaje |
| **SLA** | Service Level Agreement - Acuerdo de nivel de servicio |
| **SRS** | Software Requirements Specification - Especificación de requisitos de software |

### 1.7. REFERENCIAS

Se han identificado los siguientes sistemas como referentes para funcionalidades similares:

| **SISTEMA** | **DESCRIPCIÓN** |
|---|---|
| **Toast POS** | Sistema de punto de venta especializado para restaurantes y bares con gestión de inventario y análisis de ventas |
| **Lightspeed** | Plataforma de gestión para comercios con módulos de POS, inventario y CRM |
| **TouchBistro** | Sistema POS para restaurantes con gestión de mesas, comandas e inventario |
| **OpenTable** | Sistema de gestión de reservas y listas de espera para restaurantes |
| **Spotify for Artists** | Plataforma de análisis y gestión de contenido musical que sirve como referencia para el módulo de programación musical |

### 1.8. RESUMEN

El Sistema de Gestión Integral para BMS Coffee Bar es una solución de software diseñada para automatizar y optimizar la operación completa de un coffee bar cultural. El sistema integra ocho módulos principales: Inventario, Punto de Venta, CRM, Gestión de Eventos y Programación Musical, Recursos Humanos, Reportes y Analítica, y Atención al Cliente. La solución permite gestionar desde el control de insumos y productos hasta la personalización de la experiencia del cliente basada en preferencias musicales, pasando por la gestión de eventos, la facturación electrónica y el análisis estratégico del negocio. El sistema está diseñado para ser escalable y operar con alta disponibilidad, garantizando la continuidad del negocio y la seguridad de los datos.

---

## 2. DESCRIPCIÓN GENERAL

BMS Coffee Bar es un establecimiento que combina la experiencia de un coffee bar especializado con una programación musical dinámica y eventos culturales. Actualmente, la operación se gestiona mediante procesos manuales y herramientas ofimáticas, lo que genera ineficiencias, pérdida de información y falta de análisis estratégico.

El software propuesto será una plataforma integral que centralización todas las operaciones del negocio. El sistema operará principalmente en la nube con capacidad de funcionamiento offline, garantizando la continuidad del servicio en todo momento. Los usuarios interactuarán con el sistema a través de diferentes dispositivos: tablets para el POS, aplicaciones móviles para clientes, y acceso web para administración y reportes.

### 2.1. PERSPECTIVA DEL PRODUCTO

El sistema se concibe como una solución integral que reemplazará los procesos manuales actuales, proporcionando una interfaz unificada para la gestión de todas las áreas del negocio.

**Interfaz del Sistema:**

- **Tablet POS:** Interfaz táctil optimizada para alta rotación, con accesos directos a productos más vendidos, gestión de mesas, comandas por áreas y múltiples formas de pago.

- **Aplicación Móvil (Cliente):** Permite a los clientes realizar reservas, ver programación musical, consultar su historial, recibir promociones personalizadas y calificar la experiencia.

- **Dashboard Administrativo (Web):** Acceso completo para gerencia y administración con visualización de KPIs, gestión de inventario, eventos, personal y reportes avanzados.

- **Panel de Portería/Acceso:** Para control de eventos y listas de invitados.

**Usuarios y Roles:**

| **ROL** | **DESCRIPCIÓN** |
|---|---|
| **Administrador** | Acceso total al sistema. Gestión de usuarios, configuración general, parametrización de precios y promociones |
| **Gerente** | Acceso a reportes financieros, gestión de personal, aprobación de compras y eventos |
| **Mesero / Cajero** | Uso del POS para toma de pedidos, gestión de mesas y facturación |
| **Barista** | Visualización de comandas de barra y cocina, gestión de su inventario de insumos |
| **DJ / Playlist Manager** | Gestión de programación musical, playlists y eventos musicales |
| **Cliente** | Acceso a la aplicación móvil para reservas, consultas y personalización de experiencia |

### 2.2. FUNCIONALIDADES DEL PRODUCTO

> **Objetivo:** Recopilar requerimientos funcionales y técnicos para el desarrollo del software que permita gestionar la operación diaria, la experiencia del cliente, la programación musical y la dinámica cultural de BMS Coffee Bar.  
> **Instrucciones:** Selecciona la opción que mejor se adapte a las necesidades operativas del negocio. Todas las preguntas ya cuentan con una respuesta sugerida (marcada con "x").

---

#### Módulo 1: Inventario, Insumos y Proveedores (Preguntas 1 - 15)

**1. ¿Cómo debe el sistema gestionar el inventario, considerando la variedad de insumos (café de especialidad, licores premium, repostería)?**
- [ ] A) Como un solo inventario general sin categorías.
- [ ] B) Categorizado por tipo de producto (Café, Licores, Alimentos, Insumos de Coctelería).
- [x] C) Categorizado con atributos específicos (ej. para café: origen, perfil de taza; para licores: graduación, añejamiento).
- [ ] D) Solo se gestiona el inventario de bebidas, la repostería se maneja en un sistema externo.

**2. ¿Cómo se debe controlar la caducidad y frescura de los productos perecederos como el café en grano o la repostería?**
- [ ] A) No se requiere control, el personal lo revisa manualmente.
- [ ] B) Sistema de alertas por fecha de vencimiento.
- [ ] C) Gestión de lotes con trazabilidad (fecha de tostión, fecha de producción).
- [x] D) B y C son necesarias para garantizar la calidad del producto.

**3. ¿Cómo se gestionará la compra a proveedores, especialmente la selección rotativa de vinos y cervezas de temporada?**
- [ ] A) Registro de facturas manual.
- [ ] B) Módulo de órdenes de compra con gestión de proveedores.
- [x] C) Módulo de órdenes de compra que permita gestionar proveedores temporales y ofertas estacionales.
- [ ] D) Se realiza fuera del sistema, en un Excel.

**4. ¿El sistema debe permitir el control de inventario mínimo para evitar desabastecimiento en días de alta demanda (ej. sábado de techno)?**
- [ ] A) No, el personal revisa el stock visualmente.
- [x] B) Sí, con alertas automáticas cuando el stock de un insumo crítico (ej. café, tequila) llegue a un nivel mínimo configurable.
- [ ] C) Solo se genera un reporte semanal.
- [ ] D) Sí, pero se debe consultar manualmente.

**5. ¿Cómo se debe manejar el inventario de insumos para coctelería (zumos prensados, bitters, especias tostadas)?**
- [ ] A) Como productos genéricos sin detalle.
- [x] B) Con atributos de frescura y fecha de preparación, ya que son ingredientes perecederos de alta rotación.
- [ ] C) No se gestionan en el sistema.
- [ ] D) Solo se registran al momento de la compra.

**6. ¿El sistema debe gestionar múltiples unidades de medida para los insumos (ej. café en gramos, licores en mililitros, repostería en unidades)?**
- [ ] A) No, todo en la misma unidad.
- [x] B) Sí, con conversiones automáticas entre unidades (ej. de litros a mililitros, de kilos a gramos).
- [ ] C) Solo se usa la unidad de compra.
- [ ] D) No es necesario, se maneja manualmente.

**7. ¿Cómo se gestiona la rotación de inventario para asegurar que los productos más antiguos se usen primero (método FIFO)?**
- [ ] A) No es necesario, todos los productos son iguales.
- [x] B) El sistema debe permitir la gestión de lotes y fechas de ingreso para aplicar FIFO.
- [ ] C) Se hace manualmente con etiquetas.
- [ ] D) Solo se aplica a productos perecederos.

**8. ¿El sistema debe permitir la carga masiva de productos y precios desde una hoja de cálculo?**
- [ ] A) No, todo se ingresa manualmente.
- [x] B) Sí, es necesario para una carga inicial rápida y actualizaciones periódicas.
- [ ] C) Solo se permite para productos nuevos.
- [ ] D) No, eso genera errores.

**9. ¿Cómo se maneja la devolución de productos a proveedores por defectos o caducidad?**
- [ ] A) No se contempla, se asume la pérdida.
- [ ] B) Se registra una nota crédito manual.
- [x] C) Módulo de devoluciones que genera una nota crédito y ajusta el inventario automáticamente.
- [ ] D) Se gestiona fuera del sistema.

**10. ¿El sistema debe permitir calcular el costo real de cada producto considerando fletes, impuestos y otros gastos asociados?**
- [ ] A) No, solo se registra el costo de compra.
- [x] B) Sí, es fundamental para calcular correctamente los márgenes de ganancia.
- [ ] C) Solo para productos importados.
- [ ] D) Eso lo hace el contador externo.

**11. ¿Cómo se debe gestionar el inventario de activos fijos como el sistema de sonido, iluminación y equipos de cocina?**
- [ ] A) No es necesario gestionarlos.
- [x] B) Registro de activos con número de serie, fecha de compra, valor y mantenimientos.
- [ ] C) Solo se registran al momento de la compra.
- [ ] D) Se lleva un Excel aparte.

**12. ¿El sistema debe permitir la generación de órdenes de compra automáticas basadas en el punto de reorden?**
- [ ] A) No, las compras las decide el administrador.
- [x] B) Sí, el sistema debe sugerir la compra cuando el stock alcance el punto de reorden configurable.
- [ ] C) Solo para productos críticos como el café.
- [ ] D) No, porque los precios fluctúan.

**13. ¿Cómo se debe gestionar el inventario de merchandise (camisetas, gorras, vasos) para la venta en el local?**
- [ ] A) No se maneja inventario de merchandise.
- [x] B) Como un inventario separado, con su propia categoría y control de existencias.
- [ ] C) Se maneja como un producto más.
- [ ] D) Solo se compra bajo pedido.

**14. ¿El sistema debe permitir la gestión de inventario por ubicación física (barra principal, barra de coctelería, bodega)?**
- [ ] A) No, todo en un solo lugar.
- [x] B) Sí, es necesario para saber dónde está cada insumo y facilitar la reposición.
- [ ] C) Solo para productos de alta rotación.
- [ ] D) No, es muy complejo.

**15. ¿Cómo se maneja el control de mermas (pérdidas por derrames, caducidad, roturas)?**
- [ ] A) No se controla.
- [ ] B) Se registra manualmente al final del día.
- [x] C) Módulo de ajustes de inventario con justificación y autorización.
- [ ] D) Solo se reporta al gerente.

---

#### Módulo 2: Punto de Venta (POS), Ventas y Facturación (Preguntas 16 - 35)

**16. ¿Qué tipo de interfaz de punto de venta (POS) se requiere para la alta rotación en barra y mesas?**
- [ ] A) Una interfaz simple con una lista de productos.
- [x] B) Interfaz táctil, rápida e intuitiva, optimizada para tablets, con accesos directos a los productos más vendidos y combos.
- [ ] C) Un sistema de venta tradicional para PC.
- [ ] D) No se necesita un POS especial, se usa la misma interfaz de venta online.

**17. ¿El POS debe permitir la apertura y cierre de mesas con la opción de transferirlas entre meseros?**
- [ ] A) No, todos los pedidos se pagan al momento.
- [x] B) Sí, es fundamental para la dinámica de atención en mesas.
- [ ] C) Solo se permite para grupos grandes.
- [ ] D) No, eso genera confusión.

**18. ¿El sistema debe permitir dividir la cuenta de una mesa entre varios comensales (pago fraccionado)?**
- [ ] A) No, solo se paga una cuenta por mesa.
- [x] B) Sí, es una necesidad común en grupos.
- [ ] C) Solo para eventos especiales.
- [ ] D) No, eso se maneja manualmente.

**19. ¿El sistema debe manejar diferentes tipos de comanda (pedidos) para barra, cocina y coctelería?**
- [ ] A) No, todo se maneja en una sola comanda.
- [x] B) Sí, para que cada área reciba solo los pedidos que le corresponden.
- [ ] C) Solo para barra y cocina.
- [ ] D) No, es muy complejo.

**20. ¿El POS debe integrar la lectura de códigos QR para identificar productos o promociones?**
- [ ] A) No.
- [x] B) Sí, agiliza el proceso de venta y control de inventario.
- [ ] C) Solo para bebidas embotelladas.
- [ ] D) No es necesario.

**21. ¿Cómo se reflejarán los cambios de precio por promociones especiales (ej. 2x1 en tequila los miércoles de despecho)?**
- [ ] A) El vendedor modifica el precio manualmente en la factura.
- [ ] B) El sistema permite programar promociones por día y hora de manera automática.
- [x] C) El sistema permite programar promociones por día y hora, y aplicarlas automáticamente en el POS.
- [ ] D) Los precios son fijos, no hay promociones.

**22. ¿El sistema debe permitir la gestión de combos y paquetes (ej. "Combo Despecho: Tequila + Café + Postre")?**
- [ ] A) No, se vende todo por separado.
- [x] B) Sí, el sistema debe permitir crear combos con precios especiales y ajuste de inventario.
- [ ] C) Solo para bebidas.
- [ ] D) No, eso es muy complicado.

**23. ¿Cómo se gestiona la propina en el sistema?**
- [ ] A) No se gestiona.
- [ ] B) El cliente la deja en efectivo.
- [x] C) El POS debe permitir agregar un porcentaje de propina al total de la cuenta.
- [ ] D) Se incluye en el precio final.

**24. ¿El sistema debe permitir ventas a crédito o fiado para clientes frecuentes?**
- [ ] A) No, todas las ventas son de contado.
- [ ] B) Sí, pero solo con aprobación del gerente.
- [x] C) Sí, con un módulo de cuentas por cobrar y límite de crédito por cliente.
- [ ] D) No, eso genera problemas de cobranza.

**25. ¿El sistema debe permitir múltiples formas de pago en una sola transacción (efectivo, tarjeta, bono)?**
- [ ] A) No, cada factura se liquida con un solo método.
- [x] B) Sí, es común que los clientes paguen con diferentes medios.
- [ ] C) Solo efectivo y tarjeta.
- [ ] D) No es necesario.

**26. ¿El sistema debe manejar caja chica para gastos menores del día (ej. compra de hielo, leche, pan)?**
- [ ] A) No, todos los gastos van a través de caja principal.
- [x] B) Sí, un módulo que permita registrar y legalizar gastos de caja menor.
- [ ] C) Solo para la compra de insumos.
- [ ] D) No, eso lo maneja el administrador manualmente.

**27. ¿Cómo se realiza el cierre de caja diario en los puntos de venta?**
- [ ] A) Arqueo de caja manual en papel.
- [ ] B) Arqueo a ciegas en el sistema por parte del cajero, comparando con el saldo teórico del software.
- [ ] C) Cierre automático al finalizar la jornada e impresión del comprobante Z.
- [x] D) B y C son correctas.

**28. ¿Qué tipo de facturación debe emitir el software?**
- [ ] A) Factura electrónica integrada directamente con la entidad tributaria.
- [ ] B) Factura estándar imprimible (la fiscal se hace en software externo).
- [ ] C) Recibos de caja internos o boletas sencillas.
- [x] D) Factura electrónica, que también sirva como resumen de la experiencia (ej. "Comprobante de tu momento BMS").

**29. ¿El sistema debe permitir la emisión de facturación a nombre de empresas o con datos fiscales específicos?**
- [ ] A) No, todas las facturas son al consumidor final.
- [x] B) Sí, debe permitir registrar NIT, razón social y dirección.
- [ ] C) Solo para ventas superiores a cierto monto.
- [ ] D) No, eso se hace en otro sistema.

**30. ¿El sistema debe enviar automáticamente la factura por correo electrónico al cliente?**
- [ ] A) No, se entrega física.
- [x] B) Sí, es una funcionalidad esperada por los clientes modernos.
- [ ] C) Solo si el cliente lo solicita.
- [ ] D) No, porque se usa facturación electrónica.

**31. ¿El sistema debe permitir la anulación de facturas con su respectiva justificación?**
- [ ] A) No, una vez emitida no se puede anular.
- [x] B) Sí, con control de permisos y registro de auditoría.
- [ ] C) Solo el gerente puede anular.
- [ ] D) No, se hace una nota crédito.

**32. ¿El sistema debe manejar la facturación de eventos especiales (ej. entradas para un concierto) que no son productos físicos?**
- [ ] A) No, se maneja en otro sistema.
- [x] B) Sí, debe permitir facturar servicios y eventos.
- [ ] C) Solo si se genera un ticket.
- [ ] D) No, no es necesario.

**33. ¿El sistema debe llevar un registro de clientes frecuentes para ofrecerles descuentos o beneficios?**
- [ ] A) No, todos los clientes pagan igual.
- [x] B) Sí, mediante un programa de fidelización integrado.
- [ ] C) Solo para clientes VIP.
- [ ] D) No, eso no es relevante.

**34. ¿El sistema debe permitir la impresión de tickets con información personalizada (ej. "¡Gracias por vivir la experiencia BMS!")?**
- [ ] A) No, solo el total.
- [x] B) Sí, es un detalle que mejora la experiencia del cliente.
- [ ] C) Solo para clientes registrados.
- [ ] D) No es necesario.

**35. ¿El POS debe integrar la gestión de inventario en tiempo real, descontando los productos al momento de la venta?**
- [ ] A) No, el inventario se actualiza al final del día.
- [x] B) Sí, es fundamental para tener control exacto y evitar sobreventas.
- [ ] C) Solo para productos críticos.
- [ ] D) No, porque puede causar lentitud en el sistema.

---

#### Módulo 3: CRM, Gestión de Clientes y Fidelización (Preguntas 36 - 55)

**36. ¿Qué datos se deben almacenar del cliente para entender su perfil musical y de consumo?**
- [ ] A) Datos personales básicos (Nombre, Documento, Teléfono, Correo).
- [ ] B) Datos completivos (+ Dirección, Ocupación).
- [x] C) Datos avanzados (+ Historial de compras, géneros musicales preferidos, asistencias a eventos).
- [ ] D) Configuración dinámica de campos según tipo de cliente.

**37. ¿El sistema debe permitir la captura de clientes desde diferentes canales (redes sociales, eventos, referidos)?**
- [ ] A) No, solo se registran los que vienen al local.
- [x] B) Sí, es necesario para un CRM completo.
- [ ] C) Solo desde la página web.
- [ ] D) No, eso se hace manualmente.

**38. ¿El sistema debe permitir segmentar a los clientes según sus preferencias musicales (ej. "Techno", "Despecho", "Rock") para enviar comunicaciones personalizadas?**
- [ ] A) No, se envían comunicaciones masivas a todos.
- [x] B) Sí, es una funcionalidad clave para anunciar los días de su género favorito o eventos especiales.
- [ ] C) No es necesario, la comunicación se hace por redes sociales.
- [ ] D) Sí, pero solo de forma manual.

**39. ¿El CRM debe permitir el envío de comunicaciones automatizadas (email, WhatsApp, SMS) para cumpleaños y aniversarios?**
- [ ] A) No.
- [x] B) Sí, es una excelente estrategia de fidelización.
- [ ] C) Solo por correo electrónico.
- [ ] D) No, eso se hace manualmente.

**40. ¿Cómo debe ser el seguimiento de tareas y la interacción con los clientes por parte de los asesores/meseros?**
- [ ] A) Una lista de tareas semanal en texto plano.
- [x] B) Calendario interactivo con alertas de cumpleaños, aniversarios, y preferencias musicales para una atención personalizada.
- [ ] C) Asignación automática de clientes por sistema Round Robin (turnos).
- [ ] D) No se requiere seguimiento, solo se atiende a los clientes cuando llegan.

**41. ¿El sistema debe gestionar el historial de interacciones con el cliente (visitas, quejas, preferencias)?**
- [ ] A) No, solo se guarda el nombre.
- [x] B) Sí, un historial cronológico completo de todas las interacciones.
- [ ] C) Solo las quejas y reclamos.
- [ ] D) No, es muy complicado.

**42. ¿Cómo se gestionarán las reclamaciones y PQRS (Peticiones, Quejas, Reclamos y Sugerencias)?**
- [ ] A) Mediante correo electrónico institucional fuera del software.
- [x] B) Módulo interno de tickets de atención con tiempos de respuesta (SLA) y responsables.
- [ ] C) Un formulario simple que llega al WhatsApp de administración.
- [ ] D) No es prioritario dentro del software.

**43. ¿El sistema debe permitir la gestión de leads (prospectos) y su seguimiento hasta la conversión?**
- [ ] A) No, solo se gestionan clientes existentes.
- [x] B) Sí, es importante para captar nuevos clientes a través de eventos y promociones.
- [ ] C) Solo se registran, no se hace seguimiento.
- [ ] D) No es necesario.

**44. ¿Cómo se debe categorizar a los prospectos o leads?**
- [ ] A) Por etapas del embudo (Contacto Inicial, Visitante, Cliente Frecuente).
- [ ] B) Por temperatura de compra (Frío, Tibio, Caliente).
- [ ] C) Por canal de origen (Redes Sociales, Recomendación, Evento).
- [x] D) Todas las anteriores integradas en un dashboard de ventas.

**45. ¿El CRM debe permitir el envío masivo de campañas de marketing musical (ej. "Este jueves, sesión de rock en vivo")?**
- [ ] A) No, para ello se usan herramientas externas.
- [x] B) Sí, filtrando clientes por género musical preferido y ciudad, a través de integración con plataformas de email marketing.
- [ ] C) Sí, solo avisos por WhatsApp individuales.
- [ ] D) No, se usa solo para ventas de productos.

**46. ¿El sistema debe integrar un programa de fidelización con puntos o niveles (ej. "Cliente Bronce", "Cliente Oro")?**
- [ ] A) No.
- [x] B) Sí, es una estrategia efectiva para incentivar la recurrencia.
- [ ] C) Solo se ofrecen descuentos ocasionales.
- [ ] D) No, no es necesario.

**47. ¿El sistema debe permitir la gestión de cupones de descuento personalizados para clientes?**
- [ ] A) No.
- [x] B) Sí, para campañas promocionales y fidelización.
- [ ] C) Solo para eventos especiales.
- [ ] D) No, eso se hace manualmente.

**48. ¿El CRM debe permitir la integración con redes sociales para monitorear menciones y comentarios?**
- [ ] A) No.
- [ ] B) Sí, para responder y gestionar la reputación en línea.
- [x] C) Sí, al menos con Facebook e Instagram.
- [ ] D) No, es muy complicado.

**49. ¿El sistema debe permitir la generación de encuestas de satisfacción y análisis de resultados?**
- [ ] A) No.
- [x] B) Sí, es fundamental para medir la calidad del servicio y la experiencia.
- [ ] C) Solo para eventos especiales.
- [ ] D) No, no es necesario.

**50. ¿El sistema debe permitir la gestión de reservas de mesas para eventos especiales (ej. un concierto acústico)?**
- [ ] A) No se toman reservas.
- [ ] B) A través de un formulario en la página web que se sincroniza con el sistema.
- [x] C) Módulo de reservas con gestión de aforo, mapa de mesas y confirmación automática.
- [ ] D) Se gestionan por teléfono y se anotan manualmente.

**51. ¿El sistema debe permitir la gestión de listas de espera para días de alta demanda?**
- [ ] A) No, se atiende por orden de llegada.
- [x] B) Sí, es necesario para organizar el flujo de clientes.
- [ ] C) Solo para eventos especiales.
- [ ] D) No, eso se maneja manualmente.

**52. ¿El sistema debe permitir el envío de recordatorios automáticos a clientes con reservas?**
- [ ] A) No.
- [x] B) Sí, para reducir las ausencias.
- [ ] C) Solo si el cliente lo solicita.
- [ ] D) No, no es necesario.

**53. ¿Cómo se gestiona la base de datos de clientes en cumplimiento de la ley de protección de datos?**
- [ ] A) No se aplica.
- [x] B) El sistema debe permitir el registro de consentimiento y la gestión de derechos ARCO.
- [ ] C) Solo se almacenan datos básicos.
- [ ] D) No, eso lo maneja el área legal.

**54. ¿El sistema debe permitir la importación/exportación de clientes desde/hacia otras plataformas (Excel, CRM externo)?**
- [ ] A) No.
- [x] B) Sí, para facilitar la migración y la interoperabilidad.
- [ ] C) Solo importación.
- [ ] D) No, eso genera problemas de seguridad.

**55. ¿El sistema debe permitir la anonimización de datos de clientes a solicitud de estos?**
- [ ] A) No.
- [x] B) Sí, como parte del cumplimiento de la ley de protección de datos.
- [ ] C) Solo para clientes que se den de baja.
- [ ] D) No, no es necesario.

---

#### Módulo 4: Gestión de Eventos, Shows y Programación Musical (Preguntas 56 - 75)

**56. ¿Cómo se debe gestionar la programación musical de la semana en el sistema?**
- [ ] A) Solo como un comentario en el calendario del local.
- [x] B) Como un módulo central que permite definir la playlist (o género) por día y hora, visible para clientes y personal.
- [ ] C) Se gestiona en una plataforma externa como Spotify y no se integra.
- [ ] D) El DJ decide en el momento.

**57. ¿El sistema debe permitir la gestión de playlists por día y hora, con la posibilidad de asignar un DJ o playlist manager responsable?**
- [ ] A) No, la música la pone el DJ sin control.
- [x] B) Sí, es fundamental para mantener la identidad del local y la rotación de géneros.
- [ ] C) Solo se registra el género del día.
- [ ] D) No, eso es muy complicado.

**58. ¿El sistema debe permitir vincular las playlists a las ventas para analizar qué géneros generan más consumo?**
- [ ] A) No, la música no influye en las ventas.
- [x] B) Sí, es una analítica clave para entender el negocio.
- [ ] C) Solo para eventos especiales.
- [ ] D) No, eso es muy complejo.

**59. ¿Cómo se gestiona la contratación de artistas y DJs para los eventos?**
- [ ] A) Fuera del sistema.
- [x] B) Módulo de gestión de talento con agenda, caché, requerimientos técnicos y seguimiento de pagos.
- [ ] C) Solo se guarda el nombre y la fecha.
- [ ] D) Se gestiona como un proveedor más.

**60. ¿El sistema debe permitir la venta de entradas o tickets para eventos especiales desde la aplicación o web?**
- [ ] A) No, las entradas solo se venden en la entrada física.
- [x] B) Sí, con código QR para validación en puerta.
- [ ] C) Se usa una tiquetera externa.
- [ ] D) No es necesario.