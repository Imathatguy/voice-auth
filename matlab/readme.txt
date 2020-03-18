The attatched matlab files are to be placed in the root directory of the VGGVox repo:

https://github.com/a-nagrani/VGGVox

It is noted that a GPU is required to run the examples in the VGGVox repo, in addition to the reworked embedding extractor.

The structure of the neural network used by the authors is a siamese network, meaning there are two identical, and parallel branches that extract embeddings, prior to being combined with a distance layer to compute a similarity score. 

In the embedding extractor, it is assumed there neglibible difference between the top and the bottom parallel branches and only the first branch is taken for the embeddings.

The VoxCeleb2 trained network was not avaliable for download at the time of writing.


Please change the paths in setup_libraries.m to ensure your matlab installation interfaces with the GPU.
