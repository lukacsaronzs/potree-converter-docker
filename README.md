# Running the container example

i have maria_szobor.las inside the input folder in the current working directory. The generated files will be saved in the potput directory.

    docker run -v $PWD/input:/input -v $PWD/output:/output potree_converter ./PotreeConverter /input/maria_szobor.las -p maria_szobor -o /output