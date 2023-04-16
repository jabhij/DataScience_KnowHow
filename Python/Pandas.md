# PANDAS :pushpin:


## Pandas | What:question:
  - Python library to work with datasets.
  - It provides excellent support for time series data, with functions for working with dates and times, resampling, and rolling calculations.
  - Pandas utilizes the `NumPy` package as its foundation, incorporating much of NumPy's structure and features. The data in Pandas is frequently employed for statistical analysis in `SciPy`, visualization with `Matplotlib`'s plotting functions, and for implementing machine learning algorithms in `Scikit-learn`.

## Pandas | Why:question:
  - Pandas allows to analyze big data efficiently, making it easy to derive insights from statistical theories. With Pandas, you can perform various operations like- **filtering, grouping, merging,** and **reshaping data,** making it easy to work with large datasets.
  - Pandas also offers the ability to **clean** and **transform** messy datasets, making them **readable** and **relevant**. This is important because often, datasets can have **missing values, inconsistent formatting**, or other types of errors. Pandas provides a range of tools to help address these issues, allowing you to focus on the data that is relevant to your analysis.
  
  Ultimately, **relevant data** is crucial in data science. We need to ensure that the data we're working with is **accurate, up-to-date,** and **appropriate** for our analysis for better business insights.

## Pandas | Applications:question:
 :warning: Tip Alert- **`EV CAM`**
  - **Data Cleaning**:heavy_minus_sign:
    - It allows to handle missing values, redundency, outliers, etc.
    - For example-
      | Function  | Explanation |
      | ------------- | ------------- |
      | `fillna()`  | Filling missing values |
      | `duplicates()`  | Identification of missing values|
      | `drop_duplicates()` | Deletion of missing values|

  - **Data Analysis**:heavy_minus_sign:
    - It offers a wide range of statistical functions for common data analysis tasks.
    - For example- `min()`, `max()`, `median()` to identify outliers and anomalies in the data.

  - **Data Exploration**:heavy_minus_sign:
    - It offers functions for summarization, quantitative values, etc.
    - For example- 
      | Function  | Explanation |
      | ------------- | ------------- |
      | `describe()`  | Quantitative summary ie- *IQR, min, max,* etc.|
      | `info()` | Null values, & datatypes|
      | `value_counts()` | Counts the frequency of each unique value | 

  - **Data Manipulation**:heavy_minus_sign:
    - It allows us to manipulation and transformtion (combine data from different sources or add new columns based on existing ones).
    - For example-  
      | Function  | Explanation |
      | ------------- | ------------- |
      | `filter()`  | Filtering|
      | `groupby()`  | Grouping of datasets|
      | `merge()` | Merging of different columns/datasets| 
  
  - **Data Visualization**:heavy_minus_sign:
    - It can be integrated with- Matplotlib and Seaborn to create compelling visualizations.
    - For example-  
      | Function  | Explanation |
      | ------------- | ------------- |
      | `plot`  | To plot using dataframe|
      | `show`  | Representing the plot|
