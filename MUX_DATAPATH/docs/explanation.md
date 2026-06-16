A MUX-based datapath is a digital circuit in which multiple operation blocks generate outputs, and a multiplexer selects one output based on a control signal.

How does this project work?

Two 8-bit inputs A and B are provided.
Four operations are performed: Addition, Subtraction, AND, and OR.
The results are sent to a 4:1 multiplexer.
The select signal sel chooses which result appears at the output.

Why is a multiplexer used?

A multiplexer allows a single output line to be shared among multiple operations, making the datapath flexible and efficient.