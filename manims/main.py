from manim import *
from numpy.conftest import coerce
from scipy.signal import square


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

        why_text = Text("Cognitive Radio\nWhy and How?", font_size=100)#.move_to(ORIGIN)
        self.play(Write(why_text))
        self.wait(2)
        self.clear()
        ax = Axes(
            x_range=[-9, 9, 2],
            y_range=[0, 1],
            x_axis_config={
                "numbers_to_include": [-6, -2, 2, 6]
            }
        ).shift(UP*0.5).set_z_index(1)

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
        sense_label = Tex("sense and choose best channel", font_size=50, color=YELLOW, fill_color=BLACK).move_to(ax.c2p(0, 0.65)).set_z_index(5)
        final_label = Tex("Collision-less transmission", font_size=50, color=YELLOW, fill_color=BLACK).move_to(ax.c2p(0, 0.65)).set_z_index(5)
        cog_label = Tex("Cognitive \\\ transmission", font_size=24, color=BLUE).move_to(ax.c2p(-6, 0.65)).set_z_index(5)



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
        ).set_z_index(1)
        ch1 = ax.plot(
            lambda t: channel_func(t, -2, 3.75)*0.8,
            color=BLUE,
        ).set_z_index(1)
        ch2 = ax.plot(
            lambda t: channel_func(t, 2, 3.75)*0.8,
            color=BLUE,
        ).set_z_index(1)
        ch3 = ax.plot(
            lambda t: channel_func(t, 6, 3.75)*0.8,
            color=BLUE,
        ).set_z_index(1)
        pu = ax.plot(
            lambda t: channel_func(t, 4.5, 5)*0.6,
            color=RED,
        ).set_z_index(1)
        pu_n = ax.plot(
            lambda t: channel_func(t, 4.5, 5)*0.6 + rng.random() * 0.08 + 0.1,
            color=PINK,
        ).set_z_index(1)

        pu_ch0_n = ax.plot(
            lambda t: channel_func(t, -6, 3.75)*0.8 + rng.random() * 0.08 + 0.1 + channel_func(t, 4.5, 5)*0.6,
            color=PINK,
        ).set_z_index(1)

        noise = ax.plot(
            lambda t: rng.random() * 0.08 + 0.1,
            # x_range=[-4, 4],
            color=GREEN,
        ).set_z_index(1)

        ch0_box = RoundedRectangle(corner_radius=0.5, height=4, width=2, color=GREEN).move_to(ax.c2p(-6, 0.5)).set_z_index(0)
        ch0_box.set_fill(GREEN, opacity=0.5)
        ch0_box.set_stroke(width=0)

        ch1_box = RoundedRectangle(corner_radius=0.5, height=4, width=2, color=GREEN).move_to(ax.c2p(-2, 0.5)).set_z_index(0)
        ch1_box.set_fill(GREEN, opacity=0.2)
        ch1_box.set_stroke(width=0)

        ch2_box = RoundedRectangle(corner_radius=0.5, height=4, width=2, color=RED).move_to(ax.c2p(2, 0.5)).set_z_index(0)
        ch2_box.set_fill(RED, opacity=0.2)
        ch2_box.set_stroke(width=0)

        ch3_box = RoundedRectangle(corner_radius=0.5, height=4, width=2, color=RED).move_to(ax.c2p(6, 0.5)).set_z_index(0)
        ch3_box.set_fill(RED, opacity=0.2)
        ch3_box.set_stroke(width=0)


        self.play(FadeIn(ax, x_label))
        self.wait(2)
        self.play(Create(noise, run_time=2))
        self.wait(1)
        self.play(FadeIn(ch2))
        self.wait(2)
        self.play(FadeIn(pu))
        self.wait(2)
        self.play(FadeIn(pu_label.shift(RIGHT*0.2), ex_label, noise_label))
        self.wait(2)
        # remove pu, ch0, and noise, and add pu_n
        self.play(FadeOut(pu, ch2, noise, pu_label, ex_label, noise_label))
        self.play(Create(pu_n, run_time=3))
        self.wait(2)
        self.play(FadeIn(line0, line1, line2, line3))
        self.play(FadeIn(ch0_label, ch1_label, ch2_label, ch3_label))
        self.wait(1)
        self.play(FadeIn(sense_label, ch0_box, ch1_box, ch2_box, ch3_box))
        self.wait(1)
        self.play(
            FadeOut(line0, line1, line2, line3, sense_label, pu_n),
            ch0_label.animate.shift(DOWN*0.2),
            ch1_label.animate.shift(DOWN*0.2),
            ch2_label.animate.shift(DOWN*0.2),
            ch3_label.animate.shift(DOWN*0.2),
                  )
        self.play(Create(pu_ch0_n, run_time=3))
        self.play(FadeIn(final_label, pu_label.shift(DOWN*0.8), cog_label.shift(DOWN*0.8)))
        self.wait(3)

