💸 FundRaise – Decentralized Fundraising Smart Contract

✨ Features

💸 Donate ETH securely with a single transaction

👑 Owner-only withdrawal of all raised funds

🔄 Safe ownership transfer to a new address

📜 Events emitted for transparency (Donation, Withdraw, ChangeOwner)

⚡ Lightweight & gas-optimized



---

📖 Overview

FundRaise is a decentralized fundraising smart contract built on Ethereum.
It allows anyone to donate ETH securely, while only the contract owner can withdraw funds.
Ownership can also be transferred safely for flexibility and future upgrades.


---

🧑‍💻 Solidity Concepts Demonstrated

📌 Interfaces (IfundRaise) → modularity & reusability
📌 Events → logging key actions (Donation, Withdraw, ChangeOwner)
📌 Modifiers (onlyOwner) → access control for sensitive functions
📌 Mappings (balances) → track donations per user
📌 Constructor → set initial contract owner
📌 Payable functions (donate, withdraw, receive) → handle ETH securely
📌 Ownership transfer → update contract owner safely
📌 Low-level call (call{value: ...}("")) → reliable ETH transfer


---

📦 Project Structure

FundRaise
 ┣ 📜 fundRaise.sol        # Main contract
 ┣ 📜 IfundRaise.sol       # Interface
 ┗ 📜 README.md            # Documentation


---

🔑 Key Design Decisions

✅ Used interface (IfundRaise) for modularity & upgradability

✅ Emitted events for every key action → better dApp integration & monitoring

✅ Applied owner-only modifier to secure sensitive functions

✅ Prevented zero-value donations

✅ Ensured safe ETH transfers using .call{value: ...}("")



---

🚀 How to Use

1. 🛠 Deploy the contract using Remix / Hardhat / Foundry


2. 💸 Donate ETH by calling donate() with some value


3. 👑 Withdraw funds (only owner) using withdraw()


4. 🔄 Transfer ownership with changeOwner(newAddress)


5. 📥 Or simply send ETH directly → contract accepts via receive()




---

📜 License

MIT License 📝


---
