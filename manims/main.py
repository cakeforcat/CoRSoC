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

        # data=Tex(
        #     "01","00","10","11","00","01","10","11",
        # )
        # framebox = SurroundingRectangle(data[-1], buff = .1)
        # self.play(Write(data))
        # self.wait(1)
        # self.play(Create(framebox))
        # self.wait(1)
        # # shift text by one box to the right and fade out last box
        # for i in range(len(data)-1):
        #     self.play(data.animate.shift(data[i].get))
        #     self.wait(0.5)
        #     self.play(FadeOut(data[-1-i]))
        #     self.wait(0.5)
        # self.play(FadeOut(framebox))

        ax = Axes(
            x_range=[-9, 9, 2],
            y_range=[0, 1],
            x_axis_config={
                "numbers_to_include": [-6, -2, 2, 6]
            }
        ).shift(UP*0.5)

        x_label = ax.get_x_axis_label(
            Tex("Frequency (MHz)").scale(0.65), edge=DOWN, direction=DOWN, buff=0.5
        )

        line0 = ax.get_vertical_line(ax.coords_to_point(-8, 1), line_config={"dashed_ratio": 0.7})
        ch0_label = Tex("Channel 0", font_size=24, color=BLUE).move_to(ax.c2p(-6, 0.9))
        line1 = ax.get_vertical_line(ax.coords_to_point(-4, 1), line_config={"dashed_ratio": 0.7})
        ch1_label = Tex("Channel 1", font_size=24, color=BLUE).move_to(ax.c2p(-2, 0.9))
        line2 = ax.get_vertical_line(ax.coords_to_point(4, 1), line_config={"dashed_ratio": 0.7})
        ch2_label = Tex("Channel 2", font_size=24, color=BLUE).move_to(ax.c2p(2, 0.9))
        line3 = ax.get_vertical_line(ax.coords_to_point(8, 1), line_config={"dashed_ratio": 0.7})
        ch3_label = Tex("Channel 3", font_size=24, color=BLUE).move_to(ax.c2p(6, 0.9))

        pu_label = Tex("Other user", font_size=24, color=RED).move_to(ax.c2p(4.5, 0.65)).set_z_index(5)
        ex_label = Tex("potential \n transmission", font_size=24, color=BLUE).move_to(ax.c2p(2, 0.9))
        noise_label = Tex("noise floor", font_size=24, color=GREEN).move_to(ax.c2p(-6, 0.25))
        sense_label = Tex("sense and choose best channel", font_size=50, color=YELLOW).move_to(ax.c2p(0, 0.65)).set_z_index(5)
        final_label = Tex("Collision-less transmission", font_size=50, color=YELLOW).move_to(ax.c2p(0, 0.65)).set_z_index(5)

        rng = np.random.default_rng(seed=2025)

        def channel_func(f, fc, bw, beta=0.2):
            # were gonna base it off of a raised cosine filter
            if np.abs(f - fc) <= (1 - beta) * bw/2:
                return 1
            elif (1 - beta) * bw/2 <= np.abs(f - fc) <= (1 + beta) * bw/2:
                return 1/2 * (1 + np.cos(np.pi / (bw * beta) * (np.abs(f - fc) - (1 - beta) * bw/2)))
            else:
                return 0


        ch0 = ax.plot(
            lambda t: channel_func(t, -6, 3.75)*0.8,
            color=BLUE,
        )
        ch1 = ax.plot(
            lambda t: channel_func(t, -2, 3.75)*0.8,
            color=BLUE,
        )
        ch2 = ax.plot(
            lambda t: channel_func(t, 2, 3.75)*0.8,
            color=BLUE,
        )
        ch3 = ax.plot(
            lambda t: channel_func(t, 6, 3.75)*0.8,
            color=BLUE,
        )

        pu = ax.plot(
            lambda t: channel_func(t, 4.5, 5)*0.6,
            color=RED,
        )

        pu_n = ax.plot(
            lambda t: channel_func(t, 4.5, 5)*0.6 + rng.random() * 0.08 + 0.1,
            color=PINK,
        )

        pu_ch0_n = ax.plot(
            lambda t: channel_func(t, -6, 3.75)*0.8 + rng.random() * 0.08 + 0.1 + channel_func(t, 4.5, 5)*0.6,
            color=PINK,
        )

        noise = ax.plot(
            lambda t: rng.random() * 0.08 + 0.1,
            # x_range=[-4, 4],
            color=GREEN,
        )#.move_to([0, 1, 0])


        self.play(FadeIn(ax, x_label))
        self.wait(2)
        self.play(Create(noise, run_time=2))
        self.wait(1)
        self.play(FadeIn(ch2))
        self.wait(2)
        self.play(FadeIn(pu))
        self.wait(2)
        self.play(FadeIn(pu_label, ex_label, noise_label))
        self.wait(2)
        # remove pu, ch0, and noise, and add pu_n
        self.play(FadeOut(pu, ch2, noise, pu_label, ex_label, noise_label))
        self.play(Create(pu_n, run_time=3))
        self.wait(2)
        self.play(FadeIn(line0, line1, line2, line3))
        self.play(FadeIn(ch0_label, ch1_label, ch2_label, ch3_label))
        self.wait(1)
        self.play(FadeIn(sense_label))
        self.wait(1)
        self.play(FadeOut(line0, line1, line2, line3, sense_label, pu_n))
        self.play(Create(pu_ch0_n, run_time=3))
        self.play(FadeIn(final_label))
        self.wait(2)

