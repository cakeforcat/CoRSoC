from manim import *


class MyScene(Scene):
    def construct(self):

        corsoc_h = Text("CoRSoC", font_size=72)
        corsoc_v = Text("Co\nR\nS\no\nC", font_size=72)
        full = Text("Cognitive\nRadio\nSystem\non\nChip", font_size=72)

        # Position the text
        corsoc_h.move_to(UP * 2)
        corsoc_v.move_to(LEFT * 2)
        # Position the vertical text
        full.align_to(corsoc_v, LEFT)
        full.align_to(corsoc_v, UP)

        # Animate the text
        self.play(Write(corsoc_h))
        self.wait(1)
        self.play(Transform(corsoc_h, corsoc_v))
        self.play(AddTextLetterByLetter(full, run_time=2))
        self.wait(1)
        self.clear()

        data=Tex(
            "01","00","10","11","00","01","10","11",
        )
        framebox = SurroundingRectangle(data[-1], buff = .1)


        self.play(Write(data))
        self.wait(1)
        self.play(Create(framebox))
        self.wait(1)
        # shift text by one box to the right and fade out last box
        for i in range(len(data)-1):
            self.play(data.animate.shift(RIGHT*2))
            self.wait(0.5)
            self.play(FadeOut(data[-1-i]))
            self.wait(0.5)
        self.play(FadeOut(framebox))

