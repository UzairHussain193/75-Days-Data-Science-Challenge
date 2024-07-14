
# Day 45/2 - Statistics
**Note:** Day 43 and 44 are skipped due to some other conferences.

---

## Outline:
1. Measure of Central Tendency
   1. Mean
      1. Sample mean
      2. Population mean
   2. Median
   3. Mode
2. Measure of Dispersion
   1. Variance
      1. Sample variance
      2. Population variance
   2. Standard Deviation

---

### 1. Measure of Central Tendency

#### 1.1 Mean
- **Definition:** The mean is the average of all the data points in a dataset.

##### 1.1.1 Sample Mean
- **Formula:** \(\bar{X} = \frac{\sum X_i}{n}\)
- **Explanation:**
  - \(X_i\): Each individual data point in the sample
  - \(n\): Number of data points in the sample
- **Example:**
  For the sample dataset {3, 7, 8, 5, 12}, the sample mean is:
  \[
  \bar{X} = \frac{3 + 7 + 8 + 5 + 12}{5} = 7
  \]

##### 1.1.2 Population Mean
- **Formula:** \(\mu = \frac{\sum X_i}{N}\)
- **Explanation:**
  - \(X_i\): Each individual data point in the population
  - \(N\): Total number of data points in the population
- **Example:**
  For the population dataset {3, 7, 8, 5, 12, 10}, the population mean is:
  \[
  \mu = \frac{3 + 7 + 8 + 5 + 12 + 10}{6} = 7.5
  \]

#### 1.2 Median
- **Definition:** The median is the middle value of a dataset when it is ordered from least to greatest.
- **Example:**
  For the dataset {3, 5, 7, 9, 11}, the median is 7.
  For the dataset {2, 4, 6, 8}, the median is the average of 4 and 6, which is 5.

#### 1.3 Mode
- **Definition:** The mode is the value that appears most frequently in a dataset.
- **Example:**
  For the dataset {4, 4, 5, 6, 7, 4, 8}, the mode is 4.

---

### 2. Measure of Dispersion

#### 2.1 Variance
- **Definition:** Variance measures the average of the squared differences between each data point and the mean.

##### 2.1.1 Sample Variance
- **Formula:** \( s^2 = \frac{\sum (X_i - \bar{X})^2}{n - 1} \)
- **Explanation:**
  - \(X_i\): Each individual data point
  - \(\bar{X}\): Sample mean
  - \(n\): Number of data points in the sample
- **Example:**
  For the sample dataset {4, 8, 6, 5, 3}, the sample mean \(\bar{X} = 5.2\). The sample variance is:
  \[
  s^2 = \frac{(4-5.2)^2 + (8-5.2)^2 + (6-5.2)^2 + (5-5.2)^2 + (3-5.2)^2}{4} = 3.2
  \]

##### 2.1.2 Population Variance
- **Formula:** \( \sigma^2 = \frac{\sum (X_i - \mu)^2}{N} \)
- **Explanation:**
  - \(X_i\): Each individual data point
  - \(\mu\): Population mean
  - \(N\): Total number of data points in the population
- **Example:**
  For the population dataset {4, 8, 6, 5, 3}, the population mean \(\mu = 5.2\). The population variance is:
  \[
  \sigma^2 = \frac{(4-5.2)^2 + (8-5.2)^2 + (6-5.2)^2 + (5-5.2)^2 + (3-5.2)^2}{5} = 2.56
  \]

#### 2.2 Standard Deviation
- **Definition:** Standard deviation is the square root of the variance. It provides a measure of the average distance of each data point from the mean, in the same units as the data.

##### 2.2.1 Sample Standard Deviation
- **Formula:** \( s = \sqrt{s^2} \)
- **Explanation:** The standard deviation is the square root of the sample variance.
- **Example:** Using the sample variance \(s^2 = 3.2\) from the previous example, the sample standard deviation \(s = \sqrt{3.2} \approx 1.79\).

##### 2.2.2 Population Standard Deviation
- **Formula:** \( \sigma = \sqrt{\sigma^2} \)
- **Explanation:** The standard deviation is the square root of the population variance.
- **Example:** Using the population variance \(\sigma^2 = 2.56\) from the previous example, the population standard deviation \(\sigma = \sqrt{2.56} \approx 1.6\).

---

These detailed notes provide a comprehensive understanding of the measures of central tendency and dispersion, along with examples to illustrate each concept.
