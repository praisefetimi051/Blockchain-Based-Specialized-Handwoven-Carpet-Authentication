# Blockchain-Based Specialized Handwoven Carpet Authentication

A decentralized platform for verifying, documenting, and tracking authentic handwoven carpets from artisan to collector.

## Overview

This system leverages blockchain technology to create immutable, transparent records that authenticate handwoven carpets throughout their lifecycle. Through four specialized smart contracts, the platform validates weaver credentials, registers unique designs, certifies natural materials, and tracks provenance, addressing the persistent challenges of fraud and misrepresentation in the artisanal carpet market.

## Core Components

### 1. Weaver Verification Contract

Validates legitimate artisans through:
- Weaver identity verification and credentials
- Geographic location validation
- Family lineage documentation
- Traditional training certification
- Weaving technique expertise
- Workshop verification
- Production capacity assessment
- Artisan community membership
- Historical production documentation
- Quality standards adherence

### 2. Design Registration Contract

Records details of carpet patterns:
- Design fingerprinting and registration
- Pattern photography and documentation
- Technical details (knot count, density)
- Traditional motif classification
- Regional style authentication
- Design ownership verification
- Cultural heritage documentation
- Historical significance records
- Original vs. adaptation classification
- Design innovation documentation

### 3. Material Certification Contract

Documents natural dyes and fibers:
- Fiber sourcing and authentication
- Natural dye verification and testing
- Chemical analysis and certification
- Sustainable harvesting documentation
- Traditional processing techniques
- Color fastness certification
- Material purity verification
- Organic certification where applicable
- Regional material authenticity
- Traditional mordant verification

### 4. Provenance Contract

Tracks chain of custody from weaver to owner:
- Creation timestamp and location
- Workshop-to-market tracking
- Dealer certification and verification
- Exhibition and auction history
- Appraisal records and authentication
- Restoration documentation
- Ownership transfer records
- Geographic movement tracking
- Museum and collection history
- Condition reports and photography

## Getting Started

### Prerequisites

- Ethereum-compatible blockchain network
- Node.js v16.0+
- Truffle Suite v5.0+
- MetaMask or similar Web3 wallet
- IPFS for decentralized storage of images and documentation

### Installation

1. Clone the repository:
   ```
   git clone https://github.com/yourusername/handwoven-carpet-authentication.git
   cd handwoven-carpet-authentication
   ```

2. Install dependencies:
   ```
   npm install
   ```

3. Compile smart contracts:
   ```
   truffle compile
   ```

4. Deploy to your preferred network:
   ```
   truffle migrate --network [network-name]
   ```

## Usage

### For Weavers and Artisans

1. Register as a verified weaver with credentials and documentation
2. Record unique carpet designs and patterns
3. Document material sourcing and dyeing processes
4. Create verifiable records of each carpet's creation
5. Build a verified portfolio of authentic works
6. Connect directly with global markets

### For Dealers and Galleries

1. Verify carpet authenticity before purchase
2. Access complete provenance records
3. Validate material and design claims
4. Register ownership transfers securely
5. Provide customers with authentication certificates
6. Build reputation through transparent practices

### For Collectors and Museums

1. Verify carpet authenticity with confidence
2. Access complete history from creation to present
3. Confirm regional authenticity and traditional techniques
4. Register ownership securely
5. Document collection history and exhibition records
6. Support traditional artisans through verified purchases

### For Appraisers and Authenticators

1. Access immutable creation records
2. Verify materials through certification data
3. Authenticate designs against registered patterns
4. Document appraisals and authentications on-chain
5. Track restoration history and condition
6. Contribute to a global authentication network

## API Reference

The system provides REST APIs for integration with existing gallery and auction platforms:

- `POST /api/weaver/verify` - Register as a verified weaver
- `GET /api/weaver/:id` - Get weaver verification details
- `POST /api/design/register` - Register a new carpet design
- `GET /api/design/:id` - View design registration details
- `POST /api/material/certify` - Submit material certification
- `GET /api/material/:carpetId` - Get material certification details
- `POST /api/provenance/transfer` - Record ownership transfer
- `GET /api/provenance/:carpetId` - View complete ownership history

## Architecture

The system implements a hybrid architecture:
- On-chain: Core verification data, ownership records, and certification hashes
- Off-chain: High-resolution imagery, detailed documentation, and test results (IPFS hashes stored on-chain)

Smart contracts use role-based access control to ensure only authorized entities can modify records.

## Authentication Process

1. Weaver Registration:
    - Identity verification through regional craft authorities
    - Documentation of training and expertise
    - Geographic and community validation

2. Carpet Creation Documentation:
    - Design registration before production
    - Process photography with timestamps
    - Material certification during production
    - Final product documentation and fingerprinting

3. Market Entry Verification:
    - Initial appraisal and authentication
    - Certificate of authenticity generation
    - QR code linking to blockchain record
    - Digital twin creation with complete specifications

4. Ownership Transfers:
    - Secure transfer protocol with multi-signature verification
    - Updated provenance recording
    - Condition reporting at transfer
    - Historical record preservation

## Security Considerations

- Multi-signature requirements for authentication claims
- Time-locked verification processes
- Integration with physical authentication methods (fiber analysis, dye testing)
- Secure storage of high-resolution documentation
- Privacy controls for collector information
- Regular security audits and vulnerability assessments

## Future Enhancements

- AI-powered pattern recognition for authentication assistance
- IoT integration for environmental monitoring of valuable carpets
- Mobile app for instant field verification
- Carbon footprint tracking for sustainable carpet production
- Virtual exhibition capabilities for authenticated collections
- Market analytics for traditional carpet valuation

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contributing

Contributions are welcome! Please read CONTRIBUTING.md for details on our code of conduct and the process for submitting pull requests.
