$pathh = "C:\Users\" + $env:UserName + "\source\repos\RESTAPI\RESTAPI.sln"
$collectionOfArgs = @($pathh,"/target:Clean","/target:Build")
msbuild $collectionOfArgs

$path = "C:\Users\Administrator\source\repos\RESTAPI\RESTAPI\bin\Debug\net6.0\"
$binpath = $path + "bin\" #lots of files
$queuetrigger = $path + "Function1\" #1 file
#$runtimespath = $binpath + "runtimes\"
#$unixpath = $runtimespath + "unix\"
#$winpath = $runtimespath + "win\lib\"
#$win64path = $runtimespath + "win7-x64\"
#$unixfilepath = $unixpath + "lib\netcoreapp3.0\"
#$win64filepath = $win64path + "native\"
#$winfilepath1 = $winpath + "netcoreapp2.0\"
#$winfilepath2 = $winpath + "netcoreapp3.0\"
#$winfilepath3 = $winpath + "netstandard2.0\"

#$filespathstocompress = New-Object System.Collections.Generic.List[string]::new

$files = @(
    "Azure.Core.dll"
    "Azure.Identity.dll"
    "Azure.Security.KeyVault.Secrets.dll"
    "Azure.Storage.Blobs.dll"
    "Azure.Storage.Common.dll"
    "Azure.Storage.Files.Shares.dll"
    "Azure.Storage.Queues.dll"
    "local.settings.json"
    "Microsoft.AI.DependencyCollector.dll"
    "Microsoft.AI.EventCounterCollector.dll"
    "Microsoft.AI.PerfCounterCollector.dll"
    "Microsoft.AI.ServerTelemetryChannel.dll"
    "Microsoft.AI.WindowsServer.dll"
    "Microsoft.ApplicationInsights.dll"
    "Microsoft.ApplicationInsights.WorkerService.dll"
    "Microsoft.AspNetCore.Authentication.Abstractions.dll"
    "Microsoft.AspNetCore.Authentication.Core.dll"
    "Microsoft.AspNetCore.Authorization.dll"
    "Microsoft.AspNetCore.Authorization.Policy.dll"
    "Microsoft.AspNetCore.AzureKeyVault.HostingStartup.dll"
    "Microsoft.AspNetCore.Hosting.Abstractions.dll"
    "Microsoft.AspNetCore.Hosting.Server.Abstractions.dll"
    "Microsoft.AspNetCore.Http.Abstractions.dll"
    "Microsoft.AspNetCore.Http.dll"
    "Microsoft.AspNetCore.Http.Extensions.dll"
    "Microsoft.AspNetCore.Http.Features.dll"
    "Microsoft.AspNetCore.JsonPatch.dll"
    "Microsoft.AspNetCore.Mvc.Abstractions.dll"
    "Microsoft.AspNetCore.Mvc.Core.dll"
    "Microsoft.AspNetCore.Mvc.Formatters.Json.dll"
    "Microsoft.AspNetCore.Mvc.WebApiCompatShim.dll"
    "Microsoft.AspNetCore.ResponseCaching.Abstractions.dll"
    "Microsoft.AspNetCore.Routing.Abstractions.dll"
    "Microsoft.AspNetCore.Routing.dll"
    "Microsoft.AspNetCore.WebUtilities.dll"
    "Microsoft.Azure.Cosmos.Table.dll"
    "Microsoft.Azure.DocumentDB.Core.dll"
    "Microsoft.Azure.KeyVault.Core.dll"
    "Microsoft.Azure.KeyVault.dll"
    "Microsoft.Azure.KeyVault.WebKey.dll"
    "Microsoft.Azure.Services.AppAuthentication.dll"
    "Microsoft.Azure.Storage.Blob.dll"
    "Microsoft.Azure.Storage.Common.dll"
    "Microsoft.Azure.Storage.Queue.dll"
    "Microsoft.Azure.WebJobs.dll"
    "Microsoft.Azure.WebJobs.Extensions.dll"
    "Microsoft.Azure.WebJobs.Extensions.Http.dll"
    "Microsoft.Azure.WebJobs.Extensions.Storage.dll"
    "Microsoft.Azure.WebJobs.Host.dll"
    "Microsoft.Azure.WebJobs.Host.Storage.dll"
    "Microsoft.Bcl.AsyncInterfaces.dll"
    "Microsoft.DotNet.PlatformAbstractions.dll"
    "Microsoft.Extensions.Azure.dll"
    "Microsoft.Extensions.Caching.Abstractions.dll"
    "Microsoft.Extensions.Caching.Memory.dll"
    "Microsoft.Extensions.Configuration.Abstractions.dll"
    "Microsoft.Extensions.Configuration.AzureKeyVault.dll"
    "Microsoft.Extensions.Configuration.Binder.dll"
    "Microsoft.Extensions.Configuration.dll"
    "Microsoft.Extensions.Configuration.EnvironmentVariables.dll"
    "Microsoft.Extensions.Configuration.FileExtensions.dll"
    "Microsoft.Extensions.Configuration.Json.dll"
    "Microsoft.Extensions.Configuration.UserSecrets.dll"
    "Microsoft.Extensions.DependencyInjection.Abstractions.dll"
    "Microsoft.Extensions.DependencyInjection.dll"
    "System.Windows.Extensions.dll"
    "System.Security.Permissions.dll"
    "System.Security.Cryptography.ProtectedData.dll"
    "System.Net.Http.Formatting.dll"
    "System.Memory.Data.dll"
    "System.Drawing.Common.dll"
    "System.Diagnostics.PerformanceCounter.dll"
    "System.Configuration.ConfigurationManager.dll"
    "Newtonsoft.Json.dll"
    "Newtonsoft.Json.Bson.dll"
    "NCrontab.Signed.dll"
    "Microsoft.WindowsAzure.Storage.dll"
    "Microsoft.Win32.SystemEvents.dll"
    "Microsoft.Spatial.dll"
    "Microsoft.Rest.ClientRuntime.dll"
    "Microsoft.Rest.ClientRuntime.Azure.dll"
    "Microsoft.Extensions.DependencyModel.dll"
    "Microsoft.Extensions.DiagnosticAdapter.dll"
    "Microsoft.Extensions.FileProviders.Abstractions.dll"
    "Microsoft.Extensions.FileProviders.Physical.dll"
    "Microsoft.Extensions.FileSystemGlobbing.dll"
    "Microsoft.Extensions.Hosting.Abstractions.dll"
    "Microsoft.Extensions.Hosting.dll"
    "Microsoft.Extensions.Logging.Abstractions.dll"
    "Microsoft.Extensions.Logging.ApplicationInsights.dll"
    "Microsoft.Extensions.Logging.Configuration.dll"
    "Microsoft.Extensions.Logging.dll"
    "Microsoft.Extensions.ObjectPool.dll"
    "Microsoft.Extensions.Options.ConfigurationExtensions.dll"
    "Microsoft.Extensions.Options.dll"
    "Microsoft.Extensions.PlatformAbstractions.dll"
    "Microsoft.Extensions.Primitives.dll"
    "Microsoft.Identity.Client.dll"
    "Microsoft.Identity.Client.Extensions.Msal.dll"
    "Microsoft.IdentityModel.Abstractions.dll"
    "Microsoft.IdentityModel.Clients.ActiveDirectory.dll"
    "Microsoft.Net.Http.Headers.dll"
    "Microsoft.OData.Core.dll"
    "Microsoft.OData.Edm.dll"
    #whatsapp has more dlls
    "Microsoft.AspNetCore.Antiforgery.dll"
    "Microsoft.AspNetCore.Cryptography.Internal.dll"
    "Microsoft.AspNetCore.DataProtection.Abstractions.dll"
    "Microsoft.AspNetCore.DataProtection.dll"
    "Microsoft.AspNetCore.Diagnostics.Abstractions.dll"
    "Microsoft.AspNetCore.Html.Abstractions.dll"
    "Microsoft.AspNetCore.Mvc.DataAnnotations.dll"
    "Microsoft.AspNetCore.Mvc.ViewFeatures.dll"
    "Microsoft.Extensions.Localization.Abstractions.dll"
    "Microsoft.Extensions.Localization.dll"
    "Microsoft.Extensions.WebEncoders.dll"
    "System.Security.Cryptography.Pkcs.dll"
    "System.Security.Cryptography.Xml.dll"
    #rest has more dlls
    "Cosmos.CRTCompat.dll"
    "Microsoft.Azure.Cosmos.Client.dll"
    "Microsoft.Azure.Cosmos.Core.dll"
    "Microsoft.Azure.Cosmos.Direct.dll"
    "Microsoft.Azure.Cosmos.Serialization.HybridRow.dll"
    "Microsoft.Azure.Cosmos.ServiceInterop.dll"
    "Microsoft.Bcl.HashCode.dll"
    "Microsoft.Graph.Core.dll"
    "Microsoft.Graph.dll"
    "Microsoft.IdentityModel.JsonWebTokens.dll"
    "Microsoft.IdentityModel.Logging.dll"
    "Microsoft.IdentityModel.Protocols.dll"
    "Microsoft.IdentityModel.Protocols.OpenIdConnect.dll"
    "Microsoft.IdentityModel.Tokens.dll"
    "msvcp140.dll"
    "System.IdentityModel.Tokens.Jwt.dll"
    "System.Text.Json.dll"
    "vcruntime140.dll"
    "vcruntime140_1.dll"
    "RESTAPI.dll"
    "RESTAPI.pdb"
)

$directory = $path + "runtimes"
if (Test-Path -Path $directory) {
    Remove-Item -Recurse -Force $directory
}

foreach ($file in $files)
{
    $currentfile = $path + $file
if (Test-Path $currentfile) {
    Remove-Item $currentfile
  }
}

$destination = $path + "zipdeploy.zip"
$fullpath = $path + "*"
Compress-Archive -Path $fullpath -DestinationPath $destination

Remove-Item -Recurse -Force $binpath
Remove-Item -Recurse -Force $queuetrigger
$hostfile = $path + "host.json"
$dependfile = $path + "RESTAPI.deps.json"
Remove-Item -Recurse -Force $hostfile
Remove-Item -Recurse -Force $dependfile

<#$binchilds = (Get-ChildItem -Recurse -File $binpath | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $binpath + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $queuetrigger | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $queuetrigger + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $unixfilepath | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $unixfilepath + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $win64filepath | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $win64filepath + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $winfilepath1 | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $winfilepath1 + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $winfilepath2 | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $winfilepath2 + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}

$binchilds = (Get-ChildItem -Recurse -File $winfilepath3 | Select-Object Name).name
foreach ($file in $binchilds)
{
    $currentfile = $winfilepath3 + $file
if (Test-Path $currentfile) {
  Remove-Item $currentfile
    #$filespathstocompress.Add($currentfile)
  }
}#>
