
# Two More Shaders

This is a very simple [Diffuse Reflection Shader](https://en.wikipedia.org/wiki/Diffuse_reflection) done as a OpenGL Shader with Processing as the host environment.

<img width="838" alt="Pouya Kary's Diffuse Shader" src="https://user-images.githubusercontent.com/2157285/41441476-f570dcfc-7047-11e8-96f2-a8c9a8ad7d82.png">


## References
- Notes from [Dr. Pourbenyamin's Graphics II Class](http://faculty.iauctb.ac.ir/a-purbenyamin-comp/fa) &mdash; Much of the work was made based on these notes.
- [Phong Shading Formula](http://www.cs.northwestern.edu/~ago820/SIG98/sig98_talk_web2/sld037.htm) for the Formula of course (ends to be needless of `cos`)
- [The Phong Model, Introduction to the Concepts of Shader, Reflection Models and BRDF](http://www.scratchapixel.com/lessons/3d-basic-rendering/phong-shader-BRDF) from _Scratch A Pixel_. I used this to find the best `Ks` and `n` values.
- [Illumination for Computer Generated Pictures](http://www.cs.northwestern.edu/~ago820/cs395/Papers/Phong_1975.pdf) &mdash; The original paper Dr. Bui Tuong Phong. Because you should always start from the origin.
- Apple Technical Report #43: [Phong Shading Reformulation for Hardware Renderer Simplification](http://dicklyon.com/tech/Graphics/Phong_TR-Lyon.pdf). Although I ended up not using their idea, it was the most optimized way to go.
