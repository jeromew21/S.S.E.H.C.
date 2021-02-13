# S.S.E.H.C.
## Semi-supervised Scalable Evaluation-perfect Heuristic Chess 
Chess backwards because I couldn't think of a better name

A lot of code lifted from https://github.com/jeromew21/Blobfish

# Goals
Reinforcement learning evaluation tuning

Parallelization + Scalable and high level of optimization (vector optimization, SSE, etc.)

Test engine strength and debug by comparing evaluation against other engines

# Secondary goals
Support for variants

Full UCI support

Portability

# Compiling 
`make`

# Contributing
Please feel free to make a branch and pull request.

### Overall project notes
Be extremely pedantic with variable naming and logical seperation of code.

Explicit is better than implicit.

Faster is gooder.

Plan for the worst case scenario.

Modularity and seperation of concerns is key.

### C++ specific

Try to not type cast if possible.

### Code Style
Try to follow this as a rough guideline: https://google.github.io/styleguide/cppguide.html

### Repository Layout

#### ./include
#### ./src
#### ./scripts
#### ./tests