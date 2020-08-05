# Will Skippy Get Home?

Example of a [Markov chain](https://en.wikipedia.org/wiki/Markov_chain). We know that no matter how big the grid is,
Skippy will eventually get home.

## Running Locally
```
➜ ruby main.rb 
Enter dimension of the Grid (>=1):
5
Hopped to: (1, 0)
Oops, hit the boundary: (1, -1)
Hopped to: (2, 0)
Hopped to: (2, 1)
...
Hopped to: (3, 4)
Oops, hit the boundary: (3, 5)
Hopped to: (4, 4)
Finished in 162 hops!

Die statistics:
Total throws: 194
North 25.26% South 23.71% East 22.16% West 28.87%
```

## Class Responsibilities
### Simulation
* initializes a simulation of skippy getting home.
* runs the simulation.
* prints the stats for the simulation.
### Grid
* initializes a square grid with provided dimensions.
* checks whether a point is valid on grid.
### Point
* contains `x` & `y` co-ordinate.
* checks whether point's co-ordinates are equal to another point's co-ordinates.
### Die
* 4 sides (N, S, E, W).
* throw to return random side.
* get statistics from all previous throws.
### Kangaroo
* initializes a kangaroo with position `(0,0)` & home `(grid_dimension -1, grid_dimension - 1)`.
* hops in 4 different directions (N, S, E, W) to a valid point on the grid.
* check whether kangaroo is home.
* get how many hops the kangaroo has taken.

## Design Decisions
**Which class should be responsible for checking if a point is valid on the grid?**

I decided that instances of the Grid class should check if a given point is valid. I could have created a `is_valid` method on the Point class but I didn't want instances of Point to know anything about the Grid dimensions.

**Keeping the Point class simple.**

I considered adding a `move(direction)` method to the Point class but instead decided for the Kangaroo class to be responsible for changing the co-ordinates. I wanted to keep the Point class as a container so all it knows about are it's x & y co-ordinates.

**Simulation class.**

I decided to create an extra class called Simulation & created an instance of this in `main.rb`. The Simulation class has very well named methods (e.g. `run`, `print_stats`), which makes it easy to understand what is happening from `main.rb`.