if status is-interactive
# Commands to run in interactive sessions can go here
end

function fish_greeting

end

if status is-login
	if test (tty) = /dev/tty1
		exec hyprland
	end
end

starship init fish | source
