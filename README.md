# 🧠 Proyecto de Automatización de Servicios con Karate

---

## 📑 Tabla de contenido

- [Introducción](#-introducción)
- [Tecnologías utilizadas](#-tecnologías-utilizadas)
- [Ejecución](#-ejecución)
- [Sobre los datos del proyecto](#-sobre-los-datos-del-proyecto)

---

## 🧩 Introducción

Proyecto de automatización de pruebas de servicios REST creado para fortalecer mis conocimientos en **Karate DSL**, **pruebas de APIs** y **Gradle**.

El proyecto implementa pruebas sobre operaciones **CRUD (Create, Read, Update, Delete)** consumiendo la API pública **JSONPlaceholder**, validando:

- Códigos de respuesta HTTP
- Estructura del JSON
- Contenido de la respuesta
- Comportamiento esperado del servicio

Las pruebas están desarrolladas con **Karate DSL**, lo que permite una sintaxis clara, legible y orientada a comportamiento (BDD).

---

## ⚙️ Tecnologías utilizadas

El proyecto está desarrollado en **Java 11**, utilizando **Gradle** como sistema de construcción y administración de dependencias.

| Tecnología             | Versión            | Descripción                                       |
|------------------------|--------------------|---------------------------------------------------|
| **Java**               | 11+                | Lenguaje base para el desarrollo del framework    |
| **Gradle**             | 8.14               | Sistema de construcción y gestión de dependencias |
| **Karate DSL**         | 1.2.0.RC5          | Framework de automatización de APIs basado en BDD |
| **JUnit 5**            | Incluido en Karate | Motor de ejecución de pruebas                     |
| **Cucumber Reporting** | 5.7.0              | Generación de reportes adicionales                |

---

## 🚀 Ejecución

### 🧰 Requisitos previos

- **Java 11** o superior instalado y con `JAVA_HOME` configurado.
- **Gradle 8.14** (no es necesario instalarlo manualmente: el proyecto incluye el *Gradle Wrapper*).
- **Conexión a Internet** para consumir **JSONPlaceholder**
- Opcional: **IntelliJ IDEA** o **Eclipse** para abrir el proyecto desde un IDE.

### ⚙️ Estructura de comandos (desde la raíz del proyecto)

Clonar el repositorio
```bash
git clone https://github.com/aymonsalver/jsonplaceholder-karate-api-test.git
```

En Git Bash / macOS:
```bash
./gradlew clean test
```

En Windows PowerShell:
```bash
.\gradlew.bat clean test
```

---

## 🔐 Sobre los datos del proyecto

Este proyecto consume la API pública:
```bash
https://jsonplaceholder.typicode.com
```
**JSONPlaceholder** es un servicio REST gratuito y público utilizado exclusivamente con fines educativos y de prueba.

⚠️ **Importante:**
- Los datos consumidos provienen de una API pública de demostración.
- No se utilizan ni almacenan datos personales reales.
- Las operaciones POST, PUT y DELETE son simuladas por la API y no afectan una base de datos real.
- El proyecto tiene fines estrictamente didácticos y de práctica en automatización de servicios.
- El autor no se hace responsable del uso indebido de los datos, la inclusión de información sensible por parte de los usuarios que utilicen este proyecto ni el uso indebido del código en entornos productivos..