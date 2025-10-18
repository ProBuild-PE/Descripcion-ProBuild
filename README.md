# ProBuild - Aplicación de Builds para Héroes de Dota 2

**ProBuild** es una aplicación móvil orientada a los jugadores de Dota 2 que desean crear, explorar y compartir builds personalizadas para los distintos héroes del juego.  
La aplicación incorpora un sistema de roles que permite a los usuarios enviar builds y al administrador aprobarlas, así como gestionar los héroes disponibles en el sistema.

---

## 🎯 Descripción del Proyecto

ProBuild facilita a los usuarios la creación de builds para héroes de Dota 2, segmentadas por fases del juego (Early Game y Late Game).  
Los usuarios pueden buscar builds existentes, enviar sus propias combinaciones de ítems y ver sus builds con estados de aprobación.

Por otro lado, los administradores tienen acceso a un panel exclusivo donde pueden aprobar o rechazar las builds enviadas, así como registrar nuevos héroes y agregar ítems al catálogo general.

La app busca combinar una experiencia de usuario amigable con una arquitectura robusta y segura para la gestión de contenido.

---

## ⚙️ Guía de Desarrollo del Proyecto ProBuild

### 🚀 Entorno de Desarrollo

El desarrollo de la aplicación **ProBuild** se lleva a cabo utilizando **Flutter**, un framework multiplataforma que permite compilar aplicaciones nativas para Android e iOS desde una sola base de código.  
Para la ejecución en dispositivos Android, se utiliza **Android Studio** como entorno de desarrollo, administración de emuladores y gestión de SDKs.

> **Tecnologías clave:**
> - [Flutter (Sitio oficial)](https://flutter.dev)  
> - [Android Studio (Sitio oficial)](https://developer.android.com/studio)

---

### 📥 Instalación del SDK de Flutter

Para configurar Flutter en tu máquina:

1. Ve al sitio oficial de Flutter: [flutter.dev](https://flutter.dev) y descarga el archivo ZIP del SDK según tu sistema operativo.
2. Extrae el contenido en una ruta **sin espacios ni caracteres especiales**.  
   - Ejemplo recomendado: `C:\\flutter\\` o `/usr/local/flutter/`

> ⚠️ **Evita directorios como `C:\\Program Files`**, ya que pueden generar problemas por permisos restringidos.

---

### 🛠️ Configuración de Variables de Entorno

Después de instalar Flutter, es necesario asegurarse de que los comandos de Flutter estén disponibles en la terminal:

1. Accede a las **Propiedades del Sistema**:  
   `Panel de control > Sistema > Configuración avanzada del sistema > Variables de entorno`
2. Busca la variable `Path` dentro del apartado "Variables del sistema" y selecciona **Editar**.
3. Añade la ruta completa hacia la carpeta `flutter/bin`.  
   - Ejemplo: `C:\\flutter\\bin` o `/usr/local/flutter/bin`

💡 Verifica la instalación ejecutando este comando en tu terminal o consola:


```bash
flutter --version
```

### ✅ Verificación Final del Entorno

Para confirmar que el entorno está correctamente configurado, ejecuta:

```bash
flutter doctor
```



---

## 📌 Requisitos No Funcionales

### 🔒 Seguridad

- **RNF01:**  
  El sistema deberá garantizar la protección de las credenciales de acceso de los usuarios utilizando técnicas de encriptación segura (por ejemplo, hash con sal usando algoritmos como SHA-256 o bcrypt). Esta medida evitará el almacenamiento de contraseñas en texto plano y reducirá el riesgo ante accesos no autorizados.

- **RNF02:**  
  El acceso al panel administrativo estará restringido únicamente a usuarios con el rol "admin". Esto será validado durante el proceso de autenticación y verificado en cada acceso a rutas protegidas dentro de la aplicación.

---

### 📱 Usabilidad

- **RNF03:**  
  La interfaz de usuario (UI) debe ser sencilla, amigable y comprensible incluso para usuarios que no tengan experiencia previa con aplicaciones móviles o videojuegos. Se priorizará el uso de iconos, botones claros, navegación coherente y retroalimentación visual ante errores o acciones exitosas.

- **RNF04:**  
  Todos los formularios de la aplicación deben contar con validaciones que impidan el envío de campos vacíos, inválidos o mal formateados (por ejemplo, correos mal escritos o builds sin ítems). Los usuarios deben recibir mensajes de error claros y específicos.

---

### ⚙ Rendimiento

- **RNF05:**  
  La aplicación debe responder de forma eficiente y mantener un tiempo de carga inferior a 2 segundos al listar builds, héroes o contenido clave, siempre que se cuente con una conexión a internet estable.

- **RNF06:**  
  Las imágenes utilizadas (de ítems y héroes) deben estar comprimidas y optimizadas para evitar un alto consumo de datos y garantizar una experiencia fluida en dispositivos de gama media o baja.

---

### 💾 Persistencia

- **RNF07:**  
  Toda la información crítica del sistema (builds, usuarios, héroes e ítems) debe almacenarse en una base de datos confiable y persistente (local o remota), asegurando que los datos no se pierdan al cerrar la app o reiniciar el dispositivo.

- **RNF08:**  
  Las builds que hayan sido rechazadas por un administrador no deben ser visibles en la sección de búsqueda pública ni en el listado general de builds por héroe. Solo el creador podrá verlas desde su cuenta.

---

### 🔄 Mantenibilidad

- **RNF09:**  
  El código fuente de la aplicación debe estar organizado por módulos o componentes reutilizables, respetando principios de diseño limpio (Clean Code). Esto facilitará futuras mejoras, correcciones de errores o implementación de nuevas funcionalidades.

- **RNF10:**  
  El sistema de gestión de ítems y héroes debe estar desacoplado de la lógica principal para permitir añadir o modificar contenido sin necesidad de recompilar ni actualizar la app desde las tiendas.

---

### 🌐 Accesibilidad

- **RNF11:**  
  La aplicación debe ser totalmente funcional en dispositivos con sistema operativo **Android 8.0 (API 26)** o superior, cubriendo así un rango amplio de compatibilidad con smartphones activos en el mercado.

- **RNF12:**  
  La interfaz debe respetar buenas prácticas de accesibilidad, como contraste suficiente entre texto y fondo, tamaños de fuente legibles y uso adecuado de colores para personas con daltonismo. Además, debe ser navegable con gestos básicos sin necesidad de periféricos adicionales.

---
