<div align="center">

# 🔌 Toggle network card

**Simule un débranchement du câble réseau, puis rebranche — pour tester la reconnexion d'une app ou d'un service.**

![Windows](https://img.shields.io/badge/Windows-10%20%7C%2011-0078D6?logo=windows)
![PowerShell](https://img.shields.io/badge/PowerShell-5.1%2B-5391FE?logo=powershell&logoColor=white)

</div>

---

## ✨ Ce que fait le script

1. attend 3 secondes (le temps de basculer sur l'app à tester) ;
2. **désactive** la carte réseau ;
3. attend 5 secondes ;
4. la **réactive**.

Utile pour vérifier qu'un jeu, un client VPN, un serveur ou un programme maison gère bien une coupure réseau.

---

## 🚀 Utilisation

Dans un PowerShell **administrateur** :
```powershell
.\toggle-network.ps1
```

Le nom de la carte se règle en tête du script (`Get-NetAdapter` liste les noms disponibles) :
```powershell
$adapterName = "Ethernet"
```

---

## ⚙️ Comment ça marche

```mermaid
flowchart LR
    A["attente 3 s"] --> D["Disable-NetAdapter"] --> W["attente 5 s"] --> E["Enable-NetAdapter"]
```

---

## 🗂️ Organisation des fichiers

```
toggle-network-card/
└── toggle-network.ps1   le script (nom de la carte et durées en tête de fichier)
```

---

## 💻 Compatibilité

| | |
|---|---|
| **Système** | Windows 10 et 11 (module NetAdapter) |
| **Droits** | administrateur |

---

<div align="center"><sub>PowerShell · tests réseau</sub></div>
