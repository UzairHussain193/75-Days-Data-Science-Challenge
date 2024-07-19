# Day 48-49/4 - Statistics

## Outline:
1. IQR Python
2. Probability
   1. Additional Rule
      1. Mutually Exclusive Events
      2. Non - Mutually Exclusive Events
   2. Multiplication Rule
      1. Independent Events
      2. Dependent Events
   3. Conditional Probability
3. Permutation and Combination
4. Confidence Intervals
5. Significance Value
6. P Value
7. Hypothesis Testing
   1. Null Hypothesis
   2. Alternate Hypothesis

---

### 1. IQR Python

**Definition:** IQR (Interquartile Range) is a measure of statistical dispersion, which is the difference between the 75th percentile (Q3) and the 25th percentile (Q1).

**Explanation:** It is used to measure the spread of the middle 50% of the data. IQR helps to identify outliers by determining the range within which the central 50% of the values fall.

**Example in Python:**
```python
import numpy as np

data = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
Q1 = np.percentile(data, 25)
Q3 = np.percentile(data, 75)
IQR = Q3 - Q1

print("Interquartile Range (IQR):", IQR)
```
This code calculates the IQR of the dataset `[1, 2, 3, 4, 5, 6, 7, 8, 9, 10]`, which is `5`.

### 2. Probability

**Definition:** Probability is the measure of the likelihood that an event will occur.

**Explanation:** Probability quantifies uncertainty and is expressed as a number between 0 and 1, where 0 indicates impossibility and 1 indicates certainty.

**Example:** The probability of rolling a 3 on a fair six-sided die is \( \frac{1}{6} \).

#### 2.1 Additional Rule

**Definition:** The Additional Rule is used to find the probability that event A or event B occurs.

##### 2.1.1 Mutually Exclusive Events

**Definition:** Events are mutually exclusive if they cannot occur at the same time.

**Example:** Rolling a 3 or a 5 on a six-sided die are mutually exclusive events.

**Formula:**
\[ P(A \cup B) = P(A) + P(B) \]

**Explanation:** If events A and B are mutually exclusive, the probability of either occurring is the sum of their individual probabilities.

##### 2.1.2 Non-Mutually Exclusive Events

**Definition:** Events are non-mutually exclusive if they can occur at the same time.

**Example:** Drawing a red card or a king from a deck of cards are non-mutually exclusive events because there are red kings.

**Formula:**
\[ P(A \cup B) = P(A) + P(B) - P(A \cap B) \]

**Explanation:** The probability of either event A or event B occurring is the sum of their individual probabilities minus the probability of both occurring.

#### 2.2 Multiplication Rule

**Definition:** The Multiplication Rule is used to find the probability that both event A and event B occur.

##### 2.2.1 Independent Events

**Definition:** Events are independent if the occurrence of one does not affect the occurrence of the other.

**Example:** Flipping a coin and rolling a die are independent events.

**Formula:**
\[ P(A \cap B) = P(A) \times P(B) \]

**Explanation:** The probability of both events occurring is the product of their individual probabilities.

##### 2.2.2 Dependent Events

**Definition:** Events are dependent if the occurrence of one affects the occurrence of the other.

**Example:** Drawing two cards from a deck without replacement are dependent events.

**Formula:**
\[ P(A \cap B) = P(A) \times P(B|A) \]

**Explanation:** The probability of both events occurring is the probability of event A occurring multiplied by the probability of event B occurring given that A has occurred.

#### 2.3 Conditional Probability

**Definition:** Conditional Probability is the probability of event B occurring given that event A has occurred.

**Example:** The probability of drawing an ace given that a king has already been drawn from a deck of cards.

**Formula:**
\[ P(B|A) = \frac{P(A \cap B)}{P(A)} \]

**Explanation:** Conditional probability is calculated by dividing the probability of both events occurring by the probability of the given event.

### 3. Permutation and Combination

**Definition:** Permutation and Combination are methods of counting the number of ways to arrange or select items.

**Permutation:**
- **Definition:** The arrangement of items in a specific order.
- **Formula:** \( P(n, r) = \frac{n!}{(n - r)!} \)
- **Example:** The number of ways to arrange 3 out of 5 books is \( \frac{5!}{(5 - 3)!} = 60 \).

**Combination:**
- **Definition:** The selection of items without regard to order.
- **Formula:** \( C(n, r) = \frac{n!}{r!(n - r)!} \)
- **Example:** The number of ways to choose 3 out of 5 books is \( \frac{5!}{3!(5 - 3)!} = 10 \).

### 4. Confidence Intervals

**Definition:** A confidence interval is a range of values within which a population parameter is estimated to lie with a certain level of confidence.

**Explanation:** It provides an estimated range of values which is likely to include an unknown population parameter, with the range calculated from a given set of sample data.

**Example:** If the sample mean of test scores is 70 with a 95% confidence interval of [65, 75], we are 95% confident that the population mean lies within this interval.

### 5. Significance Value

**Definition:** The significance value (alpha) is the threshold used to determine whether a result is statistically significant.

**Explanation:** Commonly set at 0.05, it represents the probability of rejecting the null hypothesis when it is true.

**Example:** If the p-value is less than 0.05, the result is considered statistically significant.

### 6. P Value

**Definition:** The p-value is the probability of obtaining results as extreme as the observed results, assuming that the null hypothesis is true.

**Explanation:** It helps determine the significance of the results. A smaller p-value indicates stronger evidence against the null hypothesis.

**Example:** If the p-value is 0.03, there is a 3% chance that the observed data would occur if the null hypothesis were true.

### 7. Hypothesis Testing

**Definition:** Hypothesis testing is a method of making decisions or inferences about population parameters based on sample data.

#### 7.1 Null Hypothesis

**Definition:** The null hypothesis (H0) is a statement that there is no effect or no difference, and it serves as the default assumption.

**Example:** H0: There is no difference in test scores between two groups.

#### 7.2 Alternate Hypothesis

**Definition:** The alternate hypothesis (H1) is a statement that there is an effect or a difference, contradicting the null hypothesis.

**Example:** H1: There is a difference in test scores between two groups.

**Explanation:** Hypothesis testing involves comparing the p-value to the significance value to determine whether to reject the null hypothesis. If the p-value is less than the significance value, we reject the null hypothesis in favor of the alternate hypothesis.