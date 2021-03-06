#!/bin/bash

echoDate()
{
    echo $(date +%F_%T)
}

echo "About to start MNIST BNN"
echoDate
#for i in `seq 1 10`; do
    /usr/bin/time -va python mnist_cnn.py --o ../results/trainedBNN --epochs 5
#done

echoDate

echo "Finished"

# To run this script
# nohup ./run10MNISTBNNTest.sh &>> ../results/bnntest0.txt &

# python mnist_cnn.py --model_prefix ../results/trained_model --predict --epochs 1