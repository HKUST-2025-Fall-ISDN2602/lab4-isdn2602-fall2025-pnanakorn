% Source Coding 
% Task 1
clear all; close all; clc;
addpath("library_p\");

% Load the input image
lorem_img = transpose(imread('lorem_img.png'));
 
% display the raw image
figure(1); clf;
imshow(lorem_img);
title('Original image');


% run-length encode
run_length_code = runlength_encode(lorem_img);
% convert the binary array into an decimal array of run lengths
runs = bin2decArray(run_length_code);

size_raw_data = length(lorem_img(:))
size_run_length = length(run_length_code)


size_huffman = [];
dict = [1,0];
for i=1:length(dict)
    % Huffman encode
    % huffman_encode(runs,dict)
    % if dict = 1, same dictionary for both black and white runs
    % if dict = 0, separate dictionaries for black and white runs
    size_huffman = [ size_huffman length(huffman_encode(runs,dict(i)))];
end
size_huffman