$command=$args[0]
$param=$args[1]

$solutionName = (Get-Item "*.sln").BaseName

switch ($command)
{
    "sln:name" { 
        $old_name = (Get-Item "*.sln").BaseName
        if($old_name -ne $param){
            Get-ChildItem -Recurse -Filter "$old_name.*" | Rename-Item -NewName {$_.name -Replace "$old_name","$param" }
            (Get-Content -path "$param.sln" -Raw) -replace "$old_name\.","$param." | Set-Content -Path "$param.sln"
        }
     }
    "sln:add" { dotnet sln add "src/$solutionName.$param" }
    "sln:remove" { dotnet sln remove "src/$solutionName.$param" }
    default { "Comando não encontrado."}
}