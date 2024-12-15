.PHONY: update
update:
	home-manager switch --flake .#nnguy

.PHONY: clean
clean:
	nix-collect-garbage -d
