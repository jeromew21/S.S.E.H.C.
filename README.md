# 🅂.🅂.🄴.🄷.🄲.
## Semi-supervised Scalable Evaluation-perfect Heuristic Chess 
Chess backwards because I couldn't think of a better name...

A lot of code lifted from https://github.com/jeromew21/Blobfish

## Goals
Reinforcement learning evaluation tuning

Parallelization + Scalable and high level of optimization (vector optimization, SSE, etc.)

Test engine strength and debug by comparing evaluation against other engines

## Secondary goals
Support for variants

Full UCI support

Portability (have it work on a raspberry pi)

## Implementation details

Magic bitboards

Hash tables

## Testing

## Documentation

## Compiling 
`make clean`

`make`

The executable will be stored in `./build/apps`.

### Debug build
`make clean`

`make debug`

### Release build
`make clean`

`make release`

# Contributing
Please feel free to make a branch and pull request.

### C++ specific

Try to not type cast if possible.

Use assertions instead of throwing errors.

### Code Style
Try to follow this as a rough guideline: https://google.github.io/styleguide/cppguide.html

The fewer indentation levels, the better.

`camelCase` for functions.

`snake_case` for variables, parameters.

`PascalCase` for types, void class methods.

`snake_case` for class getter/setters.

`leading_underscore_` for private variables.


### Repository Layout

#### ./benchmarking
Benchmark suite.

#### ./docs
Auto-generated Doxygen documentation.

#### ./include
Header files.

#### ./src
Source files.

#### ./resources
Images, documents, etc.
