from mentalfatigue import assess
# |MODULES|--------------------------------------------------------------------
import sys

import pandas as pd
import pickle as pk



if __name__ == "__main__":
    test = pd.read_csv('testlist.csv')
    test = test.iloc[:, 1:-2].to_numpy()
    for sample in test:
        print(assess(sample.reshape(1, -1)))
    #train = pd.read_csv('trainlist.csv')
    #mean = train.iloc[:, 1:-2].mean(axis=0).to_list()
    #var = train.iloc[:, 1:-2].std(axis=0).to_list()
    #pk.dump(mean, open('mean.sav', 'wb'))
    #pk.dump(var, open('var.sav', 'wb'))
    #print(test)
    #print(mean)
    # print(var)

    #for i, row in test.iterrows():

        #print(assess(row[1:-2].to_numpy()))

    sys.exit(0)

