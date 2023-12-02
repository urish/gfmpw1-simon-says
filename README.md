# algofoogle-multi-caravel

[![License](https://img.shields.io/badge/License-Apache%202.0-blue.svg)](https://opensource.org/licenses/Apache-2.0)

This is Anton's repo for individually hardening several projects that will target a single GFMPW-1 submission (GF180 Open PDK).

For more info, see: [0181 &sect; 'What I did'](https://github.com/algofoogle/journal/blob/master/0181-2023-12-02.md#what-i-did).

**NOTE:** Whichever `gf180-*` branch you're on reflects which project you're in, specifically, and all should be branching from [`gf180-base`](https://github.com/algofoogle/algofoogle-multi-caravel/tree/gf180-base) (which should hopefully be the default).

The idea is that if general updates are required to `gf180-base`, they should be easy enough to merge to each of the project branches, to keep everything consistent.

**NOTE:** It is expected that each *individual* hardened project branch will be copied into one consolidated caravel_user_project when it is considered stable.

You should find that the information above does not deviate per branch, but the information below intentionally does.


# Specific project for branch `gf180-base`: Common base project

You are on the branch that defines the 'clean base' project that is common to all other project branches.

This branch has no `gds/`, `lef/`, etc. because that is the domain of a real project which branches from this base.
