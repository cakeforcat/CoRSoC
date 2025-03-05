Fclk = 8e6;

% load the csv words database
words = table2array(readtable('words_alpha.txt'));

% filter for words that are at least 5 characters long
words = words(cellfun('length', words) == 10);

N = 1000; % number of words grab

% get a random sample of N words
Nwords = words(randperm(length(words), N));