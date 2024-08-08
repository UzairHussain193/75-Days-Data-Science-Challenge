def NBAccuracy(features_train, labels_train, features_test, labels_test):
    """ compute the accuracy of your Naive Bayes classifier """
    # Import the sklearn module for GaussianNB
    from sklearn.naive_bayes import GaussianNB
    # Import the accuracy_score function from sklearn
    from sklearn.metrics import accuracy_score

    # Create the Gaussian Naive Bayes classifier
    clf = GaussianNB()

    # Fit the classifier on the training features and labels
    clf.fit(features_train, labels_train)

    # Use the trained classifier to predict labels for the test features
    pred = clf.predict(features_test)

    # Calculate and return the accuracy on the test data
    accuracy = accuracy_score(labels_test, pred)
    return accuracy
