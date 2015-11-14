function [pLetters, letters] = probabilidadeLetras(file)

    letters = ['a':'z' '????????????' 'A':'Z' '????????????'];

    fileID = fopen(file);

    n = zeros(length(letters));
    counter = 0; % counter of sequences

    while 1
        line = fgets(fileID);
        if ~ischar(line)
           break
        end
        line = strsplit(line);
        
        for j = 1:length(line)
            word = line{j};
            for i = 1:length(word) - 1
                n(letters == word(i), letters == word(i + 1)) = n(letters == word(i), letters == word(i + 1)) + 1;
                counter = counter + 1;
            end
        end
    end
    
    fclose(fileID);
    
    pLetters = n / counter;
    %pLetters = bsxfun(@rdivide, pLetters, sum(pLetters));