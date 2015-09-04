<#  
  This part is comment part.
  auto-move-script for files of 1 day ago.
#>

while(1)
{
  $CompareDate = (Get-Date).AddDays(-1) 

  echo $CompareDate

  $list = "C:\Users\youngkwonjo\Documents\test\"
  $destination = "C:\Users\youngkwonjo\Documents\test2\"
  $items = Get-ChildItem $list -Recurse | Where-Object { $_.LastWriteTime -lt $compareDate }
  foreach ($item in $items) {
     $fullname=$list+$item.name
     echo $fullname"   "$destination
     Move-Item $fullname $destination
  }
  dir $list
  timeout 3
}

<#
  echo $destination
  Get-ChildItem $destination
#>
