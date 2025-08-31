# Atlas Database Management Demo Project

## Introduction

[Atlas](https://atlasgo.io/) is a tool for **database schema management, migrations, and versioning**.  
In this demo project, we demonstrate how to use Atlas in a **declarative workflow** with a database split into multiple schemas.

The goal is to showcase:
- Managing schemas as **SQL files** in a structured folder layout.
- Applying changes with `atlas schema apply`.
- Inspecting and diffing database state.
- Using a **dev database** to validate changes before applying them to production.

