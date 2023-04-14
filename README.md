# Crosssfire Server backup script (1.0)
Creates a backup of your Crossfire Server folder

Official support sites: [Official Github Repo](https://github.com/fstltna/WesnothBackup) - [Official Forum](https://wesnoth.gameplayer.club/index.php/forum/wesnoth-server-tools)  - [Official Download Area](https://wesnoth.gameplayer.club/index.php/downloads/category/5-wesnoth-server-tools)
![Wesnoth Sample Screen](https://wesnoth.gameplayer.club/The_Battle_for_Wesnoth.jpg)

---

1. Edit the settings at the top of crossfirebackup.pl if needed
2. create a cron job like this:

        1 1 * * * /home/crossfire/crossfirebackup/crossfirebackup.pl

3. This will back up your Crossfire Server installation at 1:01am each day, and keep the last 5 backups.

