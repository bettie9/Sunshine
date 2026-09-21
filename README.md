<p align="center">
  <img src="assets/sunshine.png" alt="Sunshine" width="96" height="96">
</p>

<h1 align="center">Sunshine</h1>

<p align="center">Custom skins, saved accounts and everyday tools for League of Legends.</p>

<p align="center">
  <a href="https://github.com/bettie9/Sunshine/releases/latest"><strong>Download for Windows</strong></a> ·
  <a href="https://discord.gg/8zsgZUxVgW">Discord</a> ·
  <a href="https://github.com/bettie9/Sunshine/issues/new/choose">Report a bug</a>
</p>

## Get started

1. Download the **`Sunshine_<version>_x64-setup.exe`** installer from the [latest release](https://github.com/bettie9/Sunshine/releases/latest).
2. Install Sunshine, then open League of Legends.
3. In **Settings → Game setup**, use **Auto-detect** or select your League installation.
4. Pick your skins and use **Apply & Inject** before your match.

**Windows 10/11 · 64-bit.** To update, run the latest installer over your existing installation.

<details>
<summary>Prefer PowerShell?</summary>

```powershell
irm https://raw.githubusercontent.com/bettie9/Sunshine/main/install.ps1 | iex
```

This downloads and runs the latest installer.

</details>

## What you can do

- **Custom skins** — browse the marketplace or import your own mods, with automatic fixes for supported outdated skins.
- **Saved accounts** — organize accounts with favorites and notes, view rank history, and create password-protected backups.
- **Automation** — configure auto-accept, champion picks and bans, including preferences for individual accounts.
- **Lobby tools** — open player lookups during champion select.
- **Make it yours** — customize the theme and choose whether to show your activity on Discord.

## Injection methods

Choose your method in **Settings → Game setup → Injection method**. Stop injection before switching.

| Method | Setup |
| --- | --- |
| **LTK Patcher** (default) | Sunshine downloads and updates it automatically. |
| **Legacy CSLOL** | Click **Open DLL folder**, add your compatible x64 `cslol-dll.dll`, then click **Check again**. You must supply this file yourself. |

If LTK does not work with your client, you can try Legacy CSLOL. China-server compatibility has not been verified.

## Need help?

Join [Discord](https://discord.gg/8zsgZUxVgW) or [open an issue](https://github.com/bettie9/Sunshine/issues/new/choose). Include your Sunshine version and what went wrong. Support logs are available in **Settings → Support → Save support logs**; review them before sharing.

For updates, see the [release notes](https://github.com/bettie9/Sunshine/releases).

<details>
<summary>Uninstall</summary>

Remove Sunshine through **Windows Settings → Apps**, or run:

```powershell
irm https://raw.githubusercontent.com/bettie9/Sunshine/main/uninstall.ps1 | iex
```

The script asks before deleting your saved skins and settings.

</details>

---

Sunshine is an independent project and is not affiliated with Riot Games. Custom skins are visible only on your own client.
