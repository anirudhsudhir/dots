function ompcompile --wraps='clang -Xpreprocessor -fopenmp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include -lomp' --description 'alias ompcompile=clang -Xpreprocessor -fopenmp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include -lomp'
    clang -Xpreprocessor -fopenmp -L/opt/homebrew/opt/libomp/lib -I/opt/homebrew/opt/libomp/include -lomp $argv
end
