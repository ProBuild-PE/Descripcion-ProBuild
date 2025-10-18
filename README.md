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
- **RNF01:** El sistema debe proteger las credenciales de acceso mediante encriptación.
- **RNF02:** Solo los usuarios con rol “Admin” podrán acceder al panel administrativo.

### 📱 Usabilidad
- **RNF03:** La interfaz debe ser intuitiva y apta para usuarios sin conocimientos técnicos.
- **RNF04:** Los formularios deben validar campos obligatorios antes de enviarse.

### ⚙ Rendimiento
- **RNF05:** La aplicación debe cargar las builds y héroes en menos de 2 segundos con conexión estable.
- **RNF06:** Las imágenes de ítems y héroes deben ser optimizadas para dispositivos móviles.

### 💾 Persistencia
- **RNF07:** Las builds y usuarios deben almacenarse en una base de datos persistente (local o en la nube).
- **RNF08:** Las builds rechazadas no deben ser visibles por otros usuarios.

### 🔄 Mantenibilidad
- **RNF09:** El código debe estar estructurado modularmente para facilitar futuras actualizaciones.
- **RNF10:** Los ítems y héroes deben poder ser añadidos sin necesidad de actualizar la app.

### 🌐 Accesibilidad
- **RNF11:** La app debe funcionar correctamente en dispositivos con Android 8.0 o superior.
- **RNF12:** La interfaz debe respetar contrastes mínimos y tamaños legibles según normas de accesibilidad.

---
