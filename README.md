✨ Features

💸 Donate ETH securely with a single transaction

👑 Owner-only withdrawal of all raised funds

🔄 Change ownership to a new address safely

📜 Events emitted for transparency (Donation, Withdraw, ChangeOwner)

⚡ Lightweight & gas-optimized




📖 Overview

FundRaise is a decentralized fundraising smart contract built on Ethereum. It allows users to donate ETH securely, while only the contract owner can withdraw funds. Ownership can also be transferred for flexibility.




🧑‍💻 Solidity Concepts Demonstrated

📌 Interfaces (IfundRaise) → modularity & reusability

📌 Events → logging key actions (Donation, Withdraw, ChangeOwner)

📌 Modifiers (onlyOwner) → access control for sensitive functions

📌 Mappings (balances) → track donations per user

📌 Constructor → set initial contract owner

📌 Payable functions (donate, withdraw, receive) → handle ETH securely

📌 Ownership transfer → update contract owner safely

📌 Low-level call (call{value: ...}("")) → reliable ETH transfer




📦 FundRaise
 ┣ 📜 fundRaise.sol        # Main contract
 ┣ 📜 IfundRaise.sol       # Interface
 ┗ 📜 README.md            # Documentation




🔑 Key Design Decisions

Used interface (IfundRaise) for modularity & upgradability

Events for every key action → improves dApp integration & monitoring

Owner-only modifier to secure sensitive functions

Prevented zero-value donations

Safe ETH transfers using .call{value: ...}("")




🚀 How to Use

🛠 Deploy the contract on Remix / Hardhat / Foundry

💸 Donate ETH by calling donate() with some value

👑 Withdraw funds (only owner) using withdraw()

🔄 Change owner with changeOwner(newAddress)

📥 Or simply send ETH directly → contract accepts via receive()


📜 License

MIT License 📝
