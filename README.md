
# Diffuse and Phong Shaders

As you may probably know, I got crazy and [wrote a whole Gouraud Shader for CPU](https://github.com/pmkary/basic-gouraud-shader). Since then I wanted my shaders to be complete and so, using the power of GLSL and Processing these are the last two shaders one might need:

![Pouya Kary's Phong and Diffuse Shaders in GLSL](https://user-images.githubusercontent.com/2157285/41479920-082bb6ba-70e2-11e8-8b59-1df9e32b1399.png)

## How to run them?
You should have [Processing](https://processing.org/) installed and then, all you need is to open the `pde` files and run them.

## References
- Notes from [Dr. Pourbenyamin's Graphics II Class](http://faculty.iauctb.ac.ir/a-purbenyamin-comp/fa) &mdash; Much of the work was made based on these notes.
- [Phong Shading Formula](http://www.cs.northwestern.edu/~ago820/SIG98/sig98_talk_web2/sld037.htm) for the Formula of course (ends to be needless of `cos`)
- [The Phong Model, Introduction to the Concepts of Shader, Reflection Models and BRDF](http://www.scratchapixel.com/lessons/3d-basic-rendering/phong-shader-BRDF) from _Scratch A Pixel_. I used this to find the best `Ks` and `n` values.
- [Illumination for Computer Generated Pictures](http://www.cs.northwestern.edu/~ago820/cs395/Papers/Phong_1975.pdf) &mdash; The original paper Dr. Bui Tuong Phong. Because you should always start from the origin.
- Apple Technical Report #43: [Phong Shading Reformulation for Hardware Renderer Simplification](http://dicklyon.com/tech/Graphics/Phong_TR-Lyon.pdf). Although I ended up not using their idea, it was the most optimized way to go.
