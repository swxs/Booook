# 问题排查

---

- [问题排查](#问题排查)
  - [2020/08/10](#20200810)
    - [照片应用无法使用](#照片应用无法使用)

---

## 2020/08/10

### 照片应用无法使用

卸载应用

``` ps1
get-appxpackage *photo*
remove-appxpackage {PackageFullName}
```

安装应用
``` ps1
Get-AppxPackage | % { Add-AppxPackage -DisableDevelopmentMode -Register "$($_.InstallLocation)\AppxManifest.xml" -verbose }
```
