# Finance_Group_Project

## Intro 
In this project our goal is to use multiple indices to show correlations between sectors and Bitcoin. We will be analyzing Stocks in two manners, internal and external correlation. Internal correlation will be between different sectors and will determine if there is a correlation between high & low prices and volume trading in a span of 10 years.  External correlation will be between all sectors and Bitcoin. 

Our steps for this project include attaining ten years of stock data for five sectors that include HealthCare, Technology, Automobile, Materials, Commerce, and Bitcoin. Data for the former sectors was obtained from Yahoo Finance in the form of CSV files. Yahoo finance provides CSV files with the date; open, high, low, close, adj_close, and volume.
Databases for these sectors were created via Python and SQL and output as CSV files. These databases were normalized using in MinMaxScaler from sklearn.preprocessing.


![stock_data](stock_data.png)

## Consumer_Cyclical 
The performance of consumer cyclicals is highly related to the state of the economy. They represent goods and services that are not considered necessities but discretionary purchases.

| Ticker | Name                         | Price (Intraday) | Change | % Change |  Volume | Avg Vol (3 month) | Market Cap | PE Ratio (TTM) |
|--------|------------------------------|-----------------:|-------:|---------:|--------:|------------------:|-----------:|---------------:|
| CMG    | Chipotle Mexican Grill, Inc. |         1,555.19 |  51.05 |   0.0339 | 290,955 |           295,773 |    43.112B |          52.42 |
| HMC    | Honda Motor Co., Ltd.        |            23.95 |   0.29 |   0.0123 | 858,289 |            1.124M |    40.519B |           8.01 |
| LULU   | Lululemon Athletica Inc.     |            312.8 |   4.86 |   0.0158 |  1.538M |            1.828M |    39.887B |          34.99 |
| LVS    | Las Vegas Sands Corp.        |            54.57 |    0.2 |   0.0037 |  5.012M |            5.677M |    41.701B |          22.57 |
| ROST   | Ross Stores, Inc.            |           115.73 |  -0.02 |   -0.02% |  2.241M |            2.642M |    39.854B |          28.02 |
| AZO    | AutoZone, Inc.               |         2,326.61 |  -0.93 |   -0.04% | 146,457 |           145,529 |     43.66B |          19.57 |
| ORLY   | O'Reilly Automotive, Inc.    |           793.38 |  -0.35 |   -0.04% | 429,618 |           455,070 |    49.646B |          24.25 |
| MAR    | Marriott International, Inc. |           166.91 |   5.88 |   0.0365 |   2.33M |            1.957M |    52.834B |          25.48 |
| YUM    | Yum! Brands, Inc.            |           126.63 |   0.58 |   0.0046 |   1.65M |            1.799M |     35.67B |          28.85 |
| BKNG   | Booking Holdings Inc.        |         2,401.58 |  57.29 |   0.0244 | 340,685 |           341,614 |    93.156B |          39.56 |

Tickers utilized to represent the materials sector were selected based off of market cap from simplywall.st. The companies listed in the figure below all have the highest market caps in the materials sector raging from $69.6 billion to $30.2 billion.
![TICKERS](TICKERS.png)

Using yahoo finance, historical ticker data for each stock was pulled from January 18th 2013 to January 18th 2023. Yahoo finance provides CSV files with date of information; open, high, low, close, adj_close, and volume. For this project we are only interested in volume, high, and low data. Thus, SQL was used to pull and merge data from individual csv files.

### Example of SQL code
![sql_ex](sql_ex.PNG)


![sql_ex2](sql_ex2.PNG)

![sql_ex3](sql_ex3.PNG)


However, as we are trying to merge multiple data sets across different sectors, it was found that the data needs to be normalized. In this case, MinMaxScaler from sklearn.preprocessing was used to normalize volume, high, and low to a set of data point between 0 and 1. This allows us to compare our large sets of data more accurately. 

### Scaler Python Code
![scale](scale.PNG)
