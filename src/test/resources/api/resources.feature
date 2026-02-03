Feature: Como usuario quiero probar el funcionamiento de la api jsonplaceholder

  Background:
    # Configuración común para todos los escenarios
    * url 'https://jsonplaceholder.typicode.com'
    * header Content-Type = 'application/json; charset=UTF-8'

  @ObtenerPublicacionExistente
  Scenario: Obtener una publicacion existente
    Given path 'posts/1'
    When method GET
    Then status 200
    And match response.id == 1

  @ObtenerPublicacionInexistente
  Scenario: Obtener una publicacion inexistente
    Given path 'posts/9999'
    When method GET
    When print response
    Then status 404
    * print response

    @CrearUsuario
    Scenario: Crear un nuevo usuario
      * path '/posts'
      * request
        """
        {
          "title": "Nuevo post",
          "body": "Contenido del nuevo post",
          "userId": 10
        }
        """
      * method POST
      * status 201
      * match response.title == 'Nuevo post'

  @ActualizarUsuario
  Scenario: Actualizar un usuario existente
    * path '/users/10'
    * request
      """
      {
        "title": "Nuevo post actualizado",
        "body": "Contenido actualizado del post",
      }
      """
    * method PUT
    * status 200
    * match response.title == 'Nuevo post actualizado'
    * print response

    @EliminarUsuario
    Scenario: Eliminar un usuario existente
      * path '/users/10'
      * method DELETE
      * status 200
      * match response == {}

