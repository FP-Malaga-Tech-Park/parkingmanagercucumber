# language: es
Característica: Gestion de sorteos
  
  Escenario: Navegación a la lista de sorteos
    Dado un usuario esta en la pagina inicial
    Cuando el usuario hace click sobre el botón de Sorteos
    Entonces esta en la pagina de lista de sorteos
  
  Escenario: Crear usuario
    Dado un usuario esta en la pagina creación de usuarios
    Cuando se añade datos en la descripcion de sorteo
    Y se pulsa en crear
    Entonces se muestra el sorteo en la lista de sorteo