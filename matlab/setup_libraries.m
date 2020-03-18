cd 'C:\Users\Ben Zhao\Documents\MATLAB\matconvnet'
addpath matlab
vl_compilenn('enableGpu', true, 'cudaRoot', 'E:\Program Files\NVIDIA GPU Computing Toolkit\CUDA\v9.2')
vl_testnn('gpu', true)

cd 'C:\Users\Ben Zhao\Documents\MATLAB\VGGVox-master'
run setup_VGGVox.m