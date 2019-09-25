sqlcmd -S . -U sa -P senhaAntiga123 -Q "alter login [sa] with password=N'sa123456', CHECK_POLICY=OFF"
