$command=$args[0]
$command2=$args[1]

$solutionName = (Get-Item "*.sln").BaseName

switch ($command)
{
    "sln:name" { 
        $old_name = (Get-Item "*.sln").BaseName
        if($old_name -ne $command2){
            Get-ChildItem -Recurse -Filter "$old_name.*" | Rename-Item -NewName {$_.name -Replace "$old_name","$command2" }
            (Get-Content -path "$command2.sln" -Raw) -replace "$old_name\.","$command2." | Set-Content -Path "$command2.sln"
        }
     }
    "sln:add" { dotnet sln add "src/$solutionName.$command2" }
    "sln:remove" { dotnet sln remove "src/$solutionName.$command2" }
    default { "Comando não encontrado."}
}