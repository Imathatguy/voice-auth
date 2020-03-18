waiter = waitbar(0, 'Loading files to be processed');

M = readtable('vox2_test_aac\user_file_locs.csv', 'ReadVariableNames', 1, 'Delimiter', ',');

g = zeros(height(M), 1024);
n_samples = height(M);

%delete(gcp('nocreate'));
%parpool(8);

for counter = 1:n_samples
    fprintf('%i\n', counter)
    waitbar(counter/n_samples, waiter, ['Processing ',num2str(counter)]);
    
    audio = char(M(counter, 'FilePath').FilePath);

    %audio = '00001.m4a'
    %audio = 'testfiles/verif/8jEAjG6SegY_0000008.wav'
    %[data, fs] = m4aread('00001.m4a', 'native')

    [output, net] = vggvox_embeddings(audio);

    g(counter, :) = output;
end

waitbar(1, waiter, 'Writing data to Disk');

G = table(g);
F = [M, G];
writetable(F, 'voice_embeddings.csv')

close(waiter)