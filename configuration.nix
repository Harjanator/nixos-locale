{ config, pkgs, ... }:

let
	username = config.username;
	group = config.users.users.${username}.group or "users";
	home = config.users.users.${username}.home;
in {
	time.timeZone = "Europe/Helsinki";

	i18n = {
		defaultLocale = "en_US.UTF-8";
		extraLocales = ["fi_FI.UTF-8/UTF-8"];
		extraLocaleSettings = 
		{
			LC_ADDRESS = "fi_FI.UTF-8";
			LC_IDENTIFICATION = "fi_FI.UTF-8";
			LC_MEASUREMENT = "fi_FI.UTF-8";
			LC_MONETARY = "fi_FI.UTF-8";
			LC_NAME = "fi_FI.UTF-8";
			LC_NUMERIC = "fi_FI.UTF-8";
			LC_PAPER = "fi_FI.UTF-8";
			LC_TELEPHONE = "fi_FI.UTF-8";
			LC_TIME = "fi_FI.UTF-8";
			LC_CTYPE = "en_US.UTF8";
			LC_MESSAGES = "en_US.UTF-8";
			LC_COLLATE = "fi_FI.UTF-8";
		};
	};
	console = {
		# font = "Lat2-Terminus16";
		keyMap = "fi";
		# useXkbConfig = true; # use xkb.options in tty.
		};
}
