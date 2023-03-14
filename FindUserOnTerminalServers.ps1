$ErrorActionPreference = 'SilentlyContinue'
$ts = Get-ADComputer -filter {Name -like 'TS*'}
$userName = Read-Host 'username'
    ForEach ($server in $ts.name) {
        
        $sessions = query user $userName /SERVER:$server

    if ($sessions) 
            {
        Write-Host "User $userName is logged on to server $server"
        Write-Host "$server"
        Write-Host "User $sessions"
            }
    else {
            
         }
                                  }
Read-Host ("Press Enter")
