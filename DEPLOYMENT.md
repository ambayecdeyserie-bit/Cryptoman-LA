# How to Deploy Smart Contracts for Free (Goerli Testnet)

1. Install dependencies:
   ```
   npm install
   ```

2. Set up your `.env` file with a Goerli RPC URL and your testnet wallet private key.

3. Compile your contracts:
   ```
   npx hardhat compile
   ```

4. Deploy:
   ```
   npm run deploy
   ```

5. View deployed address in the terminal. You can verify on [Goerli Etherscan](https://goerli.etherscan.io).

## Notes
- Use [Alchemy](https://www.alchemy.com/) or [Infura](https://infura.io/) for free RPC endpoints.
- NEVER use a mainnet key for testnet deployments.