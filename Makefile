.PHONY: contracts-build contracts-test contracts-fmt bot-test frontend-test

contracts-build:
	cd contracts && forge build

contracts-test:
	cd contracts && forge test -vvv

contracts-fmt:
	cd contracts && forge fmt

bot-test:
	cd bot && pnpm test

frontend-test:
	cd frontend && pnpm test
