# language: es
Característica: Gestion de usuarios
  
  Escenario: Navegación a la lista de usuarios
    Dado un usuario esta en la pagina inicial
    Cuando el usuario hace click sobre el botón de Usuarios
    Entonces esta en la pagina de lista de usuarios
  
  Escenario: Comprobar que el formulario de creación de usuarios tiene todos los elementos
    Dado un usuario esta en la pagina creación de usuarios
    Entonces se muestra un campo de correo electrónico
    Y se muestra un campo de nombre
    Y se muestra un campo de primer apellido
    Y se muestra un campo de segundo apellido
    Y se muestra un botón de creación

  Escenario: Crear un usuario correctamente
    Dado un usuario esta en la pagina creación de usuarios
    Y el correo usuario@correo.com no esta asignado a otro usuario
    Cuando relleno el campo correo electrónico con usuario@correo.com
    Y relleno el campo nombre con David
    Y relleno el campo primer apellido con Hormigo
    Y el usuario hace click sobre el botón de crear usuario

  Escenario: Fallo al crear por correo repetido
    Dado un usuario esta en la pagina creación de usuarios
    Y el correo usuario@correo.com esta asignado a otro usuario

    Escenario: Fallo al dejar correo vacio
      Dado un usuario esta en la pagina creación de usuarios
      Cuando dejo el correo vacio
      Y relleno el campo nombre con David
      Y relleno el campo primer apellido con Hormigo
      Y el usuario hace click sobre el botón de crear usuario

    Escenario: Fallo al dejar nombre vacio
      Dado un usuario esta en la pagina creación de usuarios
      Y el correo usuario@correo.com no esta asignado a otro usuario
      Cuando relleno el campo correo electrónico con usuario@correo.com
      Y dejo el nombre vacio
      Y relleno el campo primer apellido con Hormigo
      Y el usuario hace click sobre el botón de crear usuario

    Escenario: Fallo al dejar apellido1 vacio
      Dado un usuario esta en la pagina creación de usuarios
      Y el correo usuario@correo.com no esta asignado a otro usuario
      Cuando relleno el campo correo electrónico con usuario@correo.com
      Y relleno el campo nombre con David
      Y dejo el apellido1 vacio
      Y el usuario hace click sobre el botón de crear usuario
