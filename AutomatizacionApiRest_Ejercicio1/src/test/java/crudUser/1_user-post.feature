Feature: Post user https://api.demoblaze.com/signup

  Background:
    * url "https://api.demoblaze.com"
    * path "/signup/"

  @Exercise1
  Scenario Outline: Create user <idcase>
    When request
    """
    {
    "<username>": "<Vusername>",
    "<password>": "<Vpassword>"
    }
    """
    And method POST
    Then status <statuscode>
    Examples:
      | idcase | username | Vusername  | password | Vpassword  | statuscode |
      | case 1 | username | jnacipucha | password | admin123.. | 200        |
      | case 2 | username | jorge      | password | 123456     | 200        |

