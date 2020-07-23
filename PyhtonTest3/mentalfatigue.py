import sys

import pandas as pd
import pickle as pk


def assess(x):
    clf = pk.load(open('finalized_model.sav', 'rb'))
    mean = pk.load(open('mean.sav', 'rb'))
    var = pk.load(open('var.sav', 'rb'))
    x = (x - mean)/var
    x = x.to_numpy().reshape(1, -1)
    return clf.predict(x)


if __name__ == "__main__":
    test = pd.read_csv('trainlist.csv')
    y = test.loc[:, "Class"].to_numpy()
    test = test.iloc[:, 1:-2]
    for i in range(test.shape[0]):
        print(assess(test.iloc[i]))
