Feature: POST CREAR USUARIO ALIADO

  Background:
    * url 'https://psop.qa-bam.com/extrafinancingtcv1/v1/extrafinancingtc'
    * def token = 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsImtpZCI6IkNOdjBPSTNSd3FsSEZFVm5hb01Bc2hDSDJYRSJ9.eyJhdWQiOiIyMDY1OTdkYy01YjNkLTRkNWEtOWViZS0wYmQxYzAyNGQzMDMiLCJpc3MiOiJodHRwczovL2xvZ2luLm1pY3Jvc29mdG9ubGluZS5jb20vYjVlMjQ0YmQtYzQ5Mi00OTViLThiMTAtNjFiZmQ0NTNlNDIzL3YyLjAiLCJpYXQiOjE3NDM0NTIzOTQsIm5iZiI6MTc0MzQ1MjM5NCwiZXhwIjoxNzQzNDU2Mjk0LCJncm91cHMiOlsiM2U3ZTFmOGUtNDM5OC00OGVjLTlmZmItMzQ2NmJhOTgwOGY2IiwiZjAyMWQ1OGMtMGJiNy00N2FhLTg1ZjgtMTZhNzJkMTg1ZmVkIiwiY2Y2MzZmOGMtMWNhZS00YTgwLTlhMjctMWE3MGY4ZDBjMzNlIiwiYjgzOWFjYTItNzdkMi00OTZmLTkwZGItNmE1ZWYwY2FjNGFjIiwiMDY5MTk0ODYtZWVmZi00MWVlLTgyZmMtZDg3OWJlYThmNmYxIiwiZmRmZTdjMTgtYTIwOS00MWRkLThiMWYtN2Y4NWYwNDRiZWY2IiwiYTI2ZWNlY2ItN2ViMi00MGJkLTgwODMtYzgwOWRiZDhjMmIyIiwiZjhkMzBjNzktYTczOS00YzVmLWJkYjYtNDk2MzNjYzc4YjE3IiwiOGUzM2VkNWMtNjEwZS00YjViLWE0YjYtZDQ2MWU3M2IxNTJiIiwiYjBkMThlNmYtNWRlOS00NGJmLTljMmItYzdlMjg5MzhkNWJmIiwiODkwM2ZkNDctYWY3MS00ZWFmLWFiYjQtMThkYWVjN2QzNDEzIiwiZTM5OTVlZjUtOTJhNS00NjliLTgzNGItMGNiMzc2OTdiYjBkIiwiZmUwOTYyOTctMTAxYS00YjY4LTljZmMtMGMwYmM5MDAxMjlkIiwiNDcwMTllYTMtNTU3OC00MmU3LTgwNDktZmFlZDQ0YzBlYTYxIiwiODE4OTVkNGMtNDBiZC00MDM5LWE1MDQtMjI0NzExNDIxYzc3IiwiNzBiMDk5MzctMGQ1Ny00MDFmLWJjNDgtMTg3MmNhMDExOTc0IiwiMzUwZmRiZmQtYTI3ZC00MmUxLWI4MzAtOTViODA1NDk3MzRlIiwiYThiZmU5ZDEtYTgwNC00YmM0LTlmNGYtMDVkNDk4ZTUwNGQwIiwiMzEzNWExNTYtMzc2ZS00MmUyLTkxNjAtZWU3Y2NlOTA5ZTg2IiwiNzQ2NjY2ZDctZTM1OS00YTAzLTg0OTYtNjU2NTIxMDE0NzI2IiwiZWI2NjlmMWMtN2RmMS00MjdkLTgxNjYtOWE4NTMxYWI4YTRhIiwiZDM5NmQzMDQtNTA0Ny00ZTBkLWE5YTgtNTk3MDMwNzg0YmQ5IiwiMzAzMGUwNzUtMjAzNS00ZjNjLTk0MGMtY2E5NDRkNzM1MGRhIiwiMDE1MmYwYTAtN2JkNC00ZTRhLTgwMjMtMmMwNzA4OTg1ZTgzIiwiZTA1YzFkZTItY2MxZC00YTJhLTk4OWEtNmIwYjRiYTQxMGQxIiwiYmE4MmUzYTctNjY4OC00NDVmLTgyMmEtZjVmZTRjOTA4M2E0IiwiNjc1ODFjYzMtMzA1OC00Y2NkLWFjYzYtNGU0NmY1NDhmNDQ0IiwiODQ5ZWRiYmYtODlmNS00NmNiLWJiNzctZTUwZmJmNzJjZTViIiwiYmQ5MmEyYTEtMWFmYi00NjAxLWFhNzEtODU5OWYyMjU0ODkwIiwiMWE2ZWRkM2YtMDg4OS00ZDc5LWFlODAtOGY3OTE2NTc2NWU1IiwiOTczYzUxMjAtOWFkNy00ODgxLWFmYWQtOTlmYjFlNzBhYzIyIiwiYmNiMmQyZTEtMjU3YS00MjhiLWJjYjUtNTE5OWEzYmMzMjU3IiwiZGVjMDg0OTctMjM4YS00ZTBlLWI3NjUtZjJiMzg2YjJmMDE5IiwiZGYyMjA4NzgtYTJhYi00OGQ5LTgzMzItYTQxYWJlODRmNjU3IiwiMDVjNTQyYmUtYjVkYy00ZjRjLTkzMWMtOWVmYWY1NTk4YzUzIiwiM2ZiNjQxMGUtZTg3OS00NzkyLWIwYTEtYjBjOTllMTViNzYxIl0sIm5hbWUiOiJDaXJvIEFsZXhhbmRlciBDb3J0ZXMgVmFzcXVleiIsIm5vbmNlIjoiMDE5NWVkYjctNTI3Zi03OGUwLWFhMGEtZDg4ZjRjZjUxODQxIiwib2lkIjoiYThiOTc1ZTctNmE3Zi00Yzc3LTg0YWYtYTRlMTJmNDllOTBlIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiY2lyby5jb3J0ZXNAYmFtLmNvbS5ndCIsInJoIjoiMS5BUThBdlVUaXRaTEVXMG1MRUdHXzFGUGtJOXlYWlNBOVcxcE5ucjRMMGNBazB3TVBBRklQQUEuIiwic2lkIjoiMDAzMjg5OTktMGQyNy02ODRlLWE5MDctNTBhZGUyNzE4ZTU0Iiwic3ViIjoiMWVhcFgtbm13ZmM5aTVsc2FSZVg3R1A4SFNMZVVYWnZscDMwekpxeDYzdyIsInRpZCI6ImI1ZTI0NGJkLWM0OTItNDk1Yi04YjEwLTYxYmZkNDUzZTQyMyIsInV0aSI6Ik9NTWhXcEtNcGtXOURWWExyNWdYQUEiLCJ2ZXIiOiIyLjAifQ.XSj5c3UU9xdmRzkhgU7btlsmGI40LCcTlpc300dVQ4nH171eHpwYOnvFsOrRNLasD4pOSnIfl2tPH8AAeEG3RZX4Imh4_4VvEKswW67gb-ENHwRSn2rV5vHlJxM2jCP2VsB5SSCuw3dahOni9yQXhYW2ub7uscSpnMlfru2_aiIbK5RJ2SmsDj9tmRa89SRTnkD_4wEgQkq1dFgxGhIrXAQ-7onK_c03xDidziRzgPdSgxu7D57Mjh9e6fNuF2eC4TIsiIOLKMzKUJx-ZYQ0tAnbxyWtenYXGqbH2qCiKZFj9L8vd0PglSR_WwCADtkG40jp9OCZDziMewqBcgEo1w'

  Scenario: Crear un nuevo usuario aliado
    Given path 'user/allieds'
    And header Authorization = 'Bearer ' + token
    And header Identifier = '67b37526-d7ab-48f1-98a6-ea940fc17e08'
    And request { "id": 2, "role": "Admin", "status": "Inactivo", "profile": "Operador", "legalName": "cars Perez", "workPhone": "912345678", "mobilePhone": "654321987", "email": "cars.perez@bam.com.gt", "supervisorId": 2 }
    When method POST
    Then status 200
    And print response