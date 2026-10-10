# vhdl-learning

VHDL beginner learning projects with cheat sheets, study plans, and hands-on examples

## Contents

- `README.md` — overview of the repository
- `docs/cheatsheet.md` — beginner VHDL cheat sheet
- `docs/study-plan.md` — 7-day beginner roadmap
- `examples/01_and_gate.vhd` — simple AND gate example
- `examples/01_tb_and_gate.vhd` — testbench for the AND gate
- `examples/02_counter.vhd` — 4-bit counter example
- `examples/02_tb_counter.vhd` — testbench for the counter

## Quick start

Install GHDL and GTKWave, then run:

```bash
ghdl -a examples/01_and_gate.vhd
ghdl -a examples/01_tb_and_gate.vhd
ghdl -e tb_and_gate
ghdl -r tb_and_gate --wave=and_gate.ghw
gtkwave and_gate.ghw
```

## Goals

- Learn VHDL syntax
- Understand simulation basics
- Build small, testable projects
- Progress from logic gates to counters and state machines
