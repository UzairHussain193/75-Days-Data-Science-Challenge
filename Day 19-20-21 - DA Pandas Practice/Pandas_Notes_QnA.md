# Questions for Revision

Try answering the following questions to test your understanding of the topics covered in this notebook:

1. What is Pandas? What makes it useful?
2. How do you install the Pandas library?
3. How do you import the `pandas` module?
4. What is the common alias used while importing the `pandas` module?
5. How do you read a CSV file using Pandas? Give an example?
6. What are some other file formats you can read using Pandas? Illustrate with examples.
7. What are Pandas dataframes? 
8. How are Pandas dataframes different from Numpy arrays?
9. How do you find the number of rows and columns in a dataframe?
10. How do you get the list of columns in a dataframe?
11. What is the purpose of the `describe` method of a dataframe?
12. How are the `info` and `describe` dataframe methods different?
13. Is a Pandas dataframe conceptually similar to a list of dictionaries or a dictionary of lists? Explain with an example.
14. What is a Pandas `Series`? How is it different from a Numpy array?
15. How do you access a column from a dataframe?
16. How do you access a row from a dataframe?
17. How do you access an element at a specific row & column of a dataframe?
18. How do you create a subset of a dataframe with a specific set of columns?
19. How do you create a subset of a dataframe with a specific range of rows?
20. Does changing a value within a dataframe affect other dataframes created using a subset of the rows or columns? Why is it so?
21. How do you create a copy of a dataframe?
22. Why should you avoid creating too many copies of a dataframe?
23. How do you view the first few rows of a dataframe?
24. How do you view the last few rows of a dataframe?
25. How do you view a random selection of rows of a dataframe?
26. What is the "index" in a dataframe? How is it useful?
27. What does a `NaN` value in a Pandas dataframe represent?
28. How is `Nan` different from `0`?
29. How do you identify the first non-empty row in a Pandas series or column?
30. What is the difference between `df.loc` and `df.at`?
31. Where can you find a full list of methods supported by Pandas `DataFrame` and `Series` objects?
32. How do you find the sum of numbers in a column of dataframe?
33. How do you find the mean of numbers in a column of a dataframe?
34. How do you find the number of non-empty numbers in a column of a dataframe?
35. What is the result obtained by using a Pandas column in a boolean expression? Illustrate with an example.
36. How do you select a subset of rows where a specific column's value meets a given condition? Illustrate with an example.
37. What is the result of the expression `df[df.new_cases > 100]` ?
38. How do you display all the rows of a pandas dataframe in a Jupyter cell output?
39. What is the result obtained when you perform an arithmetic operation between two columns of a dataframe? Illustrate with an example.
40. How do you add a new column to a dataframe by combining values from two existing columns? Illustrate with an example.
41. How do you remove a column from a dataframe? Illustrate with an example.
42. What is the purpose of the `inplace` argument in dataframe methods?
43. How do you sort the rows of a dataframe based on the values in a particular column?
44. How do you sort a pandas dataframe using values from multiple columns?
45. How do you specify whether to sort by ascending or descending order while sorting a Pandas dataframe?
46. How do you change a specific value within a dataframe?
47. How do you convert a dataframe column to the `datetime` data type?
48. What are the benefits of using the `datetime` data type instead of `object`?
49. How do you extract different parts of a date column like the month, year, month, weekday, etc., into separate columns? Illustrate with an example.
50. How do you aggregate multiple columns of a dataframe together?
51. What is the purpose of the `groupby` method of a dataframe? Illustrate with an example.
52. What are the different ways in which you can aggregate the groups created by `groupby`?
53. What do you mean by a running or cumulative sum? 
54. How do you create a new column containing the running or cumulative sum of another column?
55. What are other cumulative measures supported by Pandas dataframes?
56. What does it mean to merge two dataframes? Give an example.
57. How do you specify the columns that should be used for merging two dataframes?
58. How do you write data from a Pandas dataframe into a CSV file? Give an example.
59. What are some other file formats you can write to from a Pandas dataframe? Illustrate with examples.
60. How do you create a line plot showing the values within a column of dataframe?
61. How do you convert a column of a dataframe into its index?
62. Can the index of a dataframe be non-numeric?
63. What are the benefits of using a non-numeric dataframe? Illustrate with an example.
64. How you create a bar plot showing the values within a column of a dataframe?
65. What are some other types of plots supported by Pandas dataframes and series?

---

# Answers:

Sure, here are the answers to the questions provided:

1. **What is Pandas? What makes it useful?**
   - Pandas is an open-source data manipulation and analysis library for Python. It provides data structures and functions needed to manipulate structured data seamlessly. Its most notable feature is the DataFrame, which is a powerful tool for data analysis, cleaning, and visualization.

2. **How do you install the Pandas library?**
   - You can install Pandas using pip:
     ```bash
     pip install pandas
     ```

3. **How do you import the `pandas` module?**
   - You import Pandas using:
     ```python
     import pandas as pd
     ```

4. **What is the common alias used while importing the `pandas` module?**
   - The common alias for Pandas is `pd`.

5. **How do you read a CSV file using Pandas? Give an example.**
   - You can read a CSV file using the `read_csv` function:
     ```python
     df = pd.read_csv('file.csv')
     ```

6. **What are some other file formats you can read using Pandas? Illustrate with examples.**
   - Pandas can read various file formats such as Excel, JSON, SQL, and more:
     ```python
     df_excel = pd.read_excel('file.xlsx')
     df_json = pd.read_json('file.json')
     df_sql = pd.read_sql('SELECT * FROM table_name', connection)
     ```

7. **What are Pandas dataframes?**
   - Pandas DataFrames are 2-dimensional, size-mutable, and potentially heterogeneous tabular data structures with labeled axes (rows and columns).

8. **How are Pandas dataframes different from Numpy arrays?**
   - Pandas DataFrames can hold different data types (e.g., integers, floats, strings) in each column, while Numpy arrays are homogeneous. DataFrames also have labeled axes (rows and columns), which makes them more flexible for data manipulation and analysis.

9. **How do you find the number of rows and columns in a dataframe?**
   - You can use the `shape` attribute:
     ```python
     rows, columns = df.shape
     ```

10. **How do you get the list of columns in a dataframe?**
    - You can use the `columns` attribute:
      ```python
      columns = df.columns
      ```

11. **What is the purpose of the `describe` method of a dataframe?**
    - The `describe` method provides a summary of the statistics pertaining to the DataFrame's numerical columns, such as count, mean, standard deviation, min, and max.

12. **How are the `info` and `describe` dataframe methods different?**
    - The `info` method provides a concise summary of the DataFrame, including the index dtype and column dtypes, non-null values, and memory usage. The `describe` method provides descriptive statistics for numerical columns.

13. **Is a Pandas dataframe conceptually similar to a list of dictionaries or a dictionary of lists? Explain with an example.**
    - A Pandas DataFrame is conceptually similar to a dictionary of lists, where each column can be thought of as a list and the column names are the keys. 
      ```python
      data = {'col1': [1, 2], 'col2': [3, 4]}
      df = pd.DataFrame(data)
      ```

14. **What is a Pandas `Series`? How is it different from a Numpy array?**
    - A Pandas Series is a one-dimensional labeled array capable of holding any data type. Unlike Numpy arrays, Series have an associated index.

15. **How do you access a column from a dataframe?**
    - You can access a column using the column name:
      ```python
      column = df['column_name']
      ```

16. **How do you access a row from a dataframe?**
    - You can access a row by its index using the `iloc` method:
      ```python
      row = df.iloc[row_index]
      ```

17. **How do you access an element at a specific row & column of a dataframe?**
    - You can use the `iloc` method for integer-location-based indexing:
      ```python
      element = df.iloc[row_index, column_index]
      ```

18. **How do you create a subset of a dataframe with a specific set of columns?**
    - You can subset a DataFrame by passing a list of column names:
      ```python
      subset_df = df[['column1', 'column2']]
      ```

19. **How do you create a subset of a dataframe with a specific range of rows?**
    - You can use the `iloc` method to slice rows:
      ```python
      subset_df = df.iloc[start_row:end_row]
      ```

20. **Does changing a value within a dataframe affect other dataframes created using a subset of the rows or columns? Why is it so?**
    - Yes, changing a value can affect other DataFrames created using a subset if they are views (not copies) of the original DataFrame. This is because views share the same data in memory. Use the `copy` method to create an independent copy:
      ```python
      subset_df = df[['column1', 'column2']].copy()
      ```

21. **How do you create a copy of a dataframe?**
    - Use the `copy` method:
      ```python
      df_copy = df.copy()
      ```

22. **Why should you avoid creating too many copies of a dataframe?**
    - Creating too many copies can lead to excessive memory usage and can slow down your program.

23. **How do you view the first few rows of a dataframe?**
    - Use the `head` method:
      ```python
      df.head()
      ```

24. **How do you view the last few rows of a dataframe?**
    - Use the `tail` method:
      ```python
      df.tail()
      ```

25. **How do you view a random selection of rows of a dataframe?**
    - Use the `sample` method:
      ```python
      df.sample(n=number_of_rows)
      ```

26. **What is the "index" in a dataframe? How is it useful?**
    - The index in a DataFrame is a label that uniquely identifies each row. It is useful for accessing rows and for aligning data during operations.

27. **What does a `NaN` value in a Pandas dataframe represent?**
    - `NaN` (Not a Number) represents missing or undefined values in a DataFrame.

28. **How is `NaN` different from `0`?**
    - `NaN` signifies a missing value, while `0` is an actual numerical value.

29. **How do you identify the first non-empty row in a Pandas series or column?**
    - You can use the `first_valid_index` method:
      ```python
      first_non_empty = series.first_valid_index()
      ```

30. **What is the difference between `df.loc` and `df.at`?**
    - `df.loc` is used for label-based indexing and can access groups of rows and columns, while `df.at` is used for accessing a single value by label.

31. **Where can you find a full list of methods supported by Pandas `DataFrame` and `Series` objects?**
    - You can find a full list of methods in the official [Pandas documentation](https://pandas.pydata.org/pandas-docs/stable/reference/index.html).

32. **How do you find the sum of numbers in a column of dataframe?**
    - Use the `sum` method:
      ```python
      column_sum = df['column_name'].sum()
      ```

33. **How do you find the mean of numbers in a column of a dataframe?**
    - Use the `mean` method:
      ```python
      column_mean = df['column_name'].mean()
      ```

34. **How do you find the number of non-empty numbers in a column of a dataframe?**
    - Use the `count` method:
      ```python
      non_empty_count = df['column_name'].count()
      ```

35. **What is the result obtained by using a Pandas column in a boolean expression? Illustrate with an example.**
    - Using a column in a boolean expression returns a Series of boolean values.
      ```python
      df['column_name'] > value
      ```

36. **How do you select a subset of rows where a specific column's value meets a given condition? Illustrate with an example.**
    - You can use boolean indexing:
      ```python
      subset_df = df[df['column_name'] > value]
      ```

37. **What is the result of the expression `df[df.new_cases > 100]` ?**
    - It returns a subset of `df` where the values in the `new_cases` column are greater than 100.

38. **How do you display all the rows of a pandas dataframe in a Jupyter cell output?**
    - You can set the display option:
      ```python
      pd.set_option('display.max_rows', None)
      print(df)
      ```

39. **What is the result obtained when you perform an arithmetic operation between two columns of a dataframe? Illustrate with an example.**
    - It performs the operation element-wise and returns a new Series.
      ```python
      df['sum'] = df['column1'] + df['column2']
      ```



40. **How do you add a new column to a dataframe by combining values from two existing columns? Illustrate with an example.**
    - You can perform the operation and assign it to a new column.
      ```python
      df['new_column'] = df['column1'] + df['column2']
      ```

41. **How do you remove a column from a dataframe? Illustrate with an example.**
    - Use the `drop` method:
      ```python
      df = df.drop('column_name', axis=1)
      ```

42. **What is the purpose of the `inplace` argument in dataframe methods?**
    - The `inplace` argument, when set to `True`, allows the method to make changes directly to the original DataFrame without returning a new one.

43. **How do you sort the rows of a dataframe based on the values in a particular column?**
    - Use the `sort_values` method:
      ```python
      df = df.sort_values('column_name')
      ```

44. **How do you sort a pandas dataframe using values from multiple columns?**
    - Pass a list of column names to `sort_values`:
      ```python
      df = df.sort_values(['column1', 'column2'])
      ```

45. **How do you specify whether to sort by ascending or descending order while sorting a Pandas dataframe?**
    - Use the `ascending` parameter in `sort_values`:
      ```python
      df = df.sort_values('column_name', ascending=False)
      ```

46. **How do you change a specific value within a dataframe?**
    - Use the `at` or `loc` method:
      ```python
      df.at[row_index, 'column_name'] = new_value
      ```

47. **How do you convert a dataframe column to the `datetime` data type?**
    - Use the `pd.to_datetime` function:
      ```python
      df['date_column'] = pd.to_datetime(df['date_column'])
      ```

48. **What are the benefits of using the `datetime` data type instead of `object`?**
    - The `datetime` data type allows for more efficient date operations, such as extracting parts of dates, performing arithmetic, and better sorting.

49. **How do you extract different parts of a date column like the month, year, month, weekday, etc., into separate columns? Illustrate with an example.**
    - Use the `dt` accessor:
      ```python
      df['year'] = df['date_column'].dt.year
      df['month'] = df['date_column'].dt.month
      df['weekday'] = df['date_column'].dt.weekday
      ```

50. **How do you aggregate multiple columns of a dataframe together?**
    - Use the `agg` method:
      ```python
      df_agg = df.agg({'column1': 'sum', 'column2': 'mean'})
      ```

51. **What is the purpose of the `groupby` method of a dataframe? Illustrate with an example.**
    - The `groupby` method is used to group DataFrame rows based on the values in one or more columns and perform aggregate operations.
      ```python
      grouped_df = df.groupby('column_name').sum()
      ```

52. **What are the different ways in which you can aggregate the groups created by `groupby`?**
    - Common aggregation methods include `sum`, `mean`, `count`, `min`, `max`, and custom aggregation functions using `agg`.

53. **What do you mean by a running or cumulative sum?**
    - A running or cumulative sum is the summation of a sequence of numbers where each value is added to the sum of the previous values in the sequence.

54. **How do you create a new column containing the running or cumulative sum of another column?**
    - Use the `cumsum` method:
      ```python
      df['cumulative_sum'] = df['column_name'].cumsum()
      ```

55. **What are other cumulative measures supported by Pandas dataframes?**
    - Other cumulative measures include `cumprod` (cumulative product), `cummax` (cumulative maximum), and `cummin` (cumulative minimum).

56. **What does it mean to merge two dataframes? Give an example.**
    - Merging two DataFrames means combining them based on a common column or index.
      ```python
      df_merged = pd.merge(df1, df2, on='common_column')
      ```

57. **How do you specify the columns that should be used for merging two dataframes?**
    - Use the `on` parameter in the `merge` method:
      ```python
      df_merged = pd.merge(df1, df2, on='common_column')
      ```

58. **How do you write data from a Pandas dataframe into a CSV file? Give an example.**
    - Use the `to_csv` method:
      ```python
      df.to_csv('file.csv', index=False)
      ```

59. **What are some other file formats you can write to from a Pandas dataframe? Illustrate with examples.**
    - You can write to Excel, JSON, SQL, and more:
      ```python
      df.to_excel('file.xlsx')
      df.to_json('file.json')
      df.to_sql('table_name', connection)
      ```

60. **How do you create a line plot showing the values within a column of dataframe?**
    - Use the `plot` method:
      ```python
      df['column_name'].plot()
      ```

61. **How do you convert a column of a dataframe into its index?**
    - Use the `set_index` method:
      ```python
      df = df.set_index('column_name')
      ```

62. **Can the index of a dataframe be non-numeric?**
    - Yes, the index can be non-numeric, such as strings or datetime objects.

63. **What are the benefits of using a non-numeric dataframe index? Illustrate with an example.**
    - Non-numeric indices can make the DataFrame more intuitive and easier to use, especially for time series data or categorical data.
      ```python
      df.set_index('date_column', inplace=True)
      ```

64. **How you create a bar plot showing the values within a column of a dataframe?**
    - Use the `plot` method with the `kind` parameter set to 'bar':
      ```python
      df['column_name'].plot(kind='bar')
      ```

65. **What are some other types of plots supported by Pandas dataframes and series?**
    - Other plot types include `hist` (histogram), `box` (boxplot), `scatter`, `area`, and `pie`.



---

**Author** : Uzair Hussain - [LinkedIn](https://linkedin.com/in/uzairhussain1/) - [Email](mailto:uzairhussain193@gmail.com)