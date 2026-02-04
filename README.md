# rtl-pipeline-register
Single-stage pipeline register with valid-ready handshake
# Valid-Ready Pipeline Register

This repository contains a synthesizable single-stage pipeline register
implemented in SystemVerilog using a standard valid/ready handshake.

## Features
- Handles backpressure correctly
- No data loss or duplication
- Fully synthesizable
- Clean reset to empty state

## Interface
- in_valid / in_ready
- out_valid / out_ready

## Usage
Designed as
