from manim import *


class MyScene(Scene):
    def construct(self):
        # Create a square
        square = Square()
        # Set the color of the square to red
        square.set_fill(RED, opacity=0.5)

        # Create a circle
        circle = Circle()
        # Set the color of the circle to blue
        circle.set_fill(BLUE, opacity=0.5)


        # Position the shapes
        square.move_to(LEFT)
        circle.move_to(RIGHT)

        # Animate the shapes
        self.play(Create(square))
        self.play(Create(circle))
        self.play(Rotate(square, angle=PI / 4), Rotate(circle, angle=-PI / 4))
        self.play(Transform(square, circle))
        self.wait(2)
