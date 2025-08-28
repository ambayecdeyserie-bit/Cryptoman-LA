# 🚀 Cryptonout Controller

Smart contract to manage profit distribution for trading bots.

### 📊 Profit Split
- 30% → Treasury (deployer/owner)
- 30% → Reinvest (contract balance)
- 40% → Rewards Vault (`0x310DbC4B5970AF0D56ABa44543EE06200f959d5B`)

### 🤖 Bots
- Liquidity Bot: `0x0278defe215ab05d76d1C209E690Ff5Ea0549576`
- Arbitrage Bot: `0x0439CB026Dffb14e3BD1ce4198644aebe99d5C32`
- Vault Bot: `0x48F12573a51E286173d3Ea48ad2335783B6f35ab`

### ⚡ Deployment
1. Fork repo → push to GitHub
2. Add repo secrets:
   - `SKALE_RPC` → your SKALE chain RPC endpoint
   - `DEPLOYER_PRIVATE_KEY` → your deployer wallet private key
3. Trigger GitHub Action → Contract deployed on SKALE (gasless!)

### 🔧 Manual
```bash
npm install
npx hardhat compile
npx hardhat run scripts/deploy.js --network skale
