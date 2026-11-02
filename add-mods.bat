@echo off
rem Run this from C:\Spook\pack AFTER installing packwiz (see ..\README.md).
rem Step 1 (once, interactive):   packwiz init
rem   name: Spook | loader: fabric | Minecraft version: 1.21.1
rem Step 2: run this file. Each line adds a mod from Modrinth and records its
rem client/server side automatically.
cd /d "%~dp0"

rem --- Core ---
packwiz modrinth add fabric-api
packwiz modrinth add from-the-fog
packwiz modrinth add simple-voice-chat

rem --- Client visuals (clients only; server ignores these) ---
packwiz modrinth add sodium
packwiz modrinth add iris
packwiz modrinth add sound-physics-remastered

rem --- Performance (server-side) ---
packwiz modrinth add lithium
packwiz modrinth add ferrite-core
packwiz modrinth add modernfix
packwiz modrinth add chunky
packwiz modrinth add spark

rem --- Still to verify for 1.21.4 before adding ---
rem Eyes in the Darkness: find its Modrinth slug, confirm a 1.21.4 Fabric build, then:
rem   packwiz modrinth add <slug>
rem Retro resource pack (OG Minecraft style) and Somber shader: download the files
rem from their Modrinth pages and put them in resourcepacks\ and shaderpacks\ here
rem (or add them with packwiz modrinth add <slug> if listed there).

packwiz refresh
echo Done. Check for any "no versions found" errors above.
