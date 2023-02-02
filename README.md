# Finance_Group_Project

## Intro 
In this project our goal is to use multiple indices to show correlations between sectors and Bitcoin. We will be analyzing Stocks in two manners, internal and external correlation. Internal correlation will be between different sectors and will determine if there is a correlation between high & low prices and volume trading in a span of 10 years.  External correlation will be between all sectors and Bitcoin. 

Our steps for this project include attaining ten years of stock data for five sectors that include HealthCare, Technology, Automobile, Materials, Commerce, and Bitcoin. Data for the former sectors was obtained from Yahoo Finance in the form of CSV files. Yahoo finance provides CSV files with the date; open, high, low, close, adj_close, and volume.
Databases for these sectors were created via Python and SQL and output as CSV files. These databases were normalized using in MinMaxScaler from sklearn.preprocessing.


![stock_data](stock_data.png)

## Consumer_Cyclical 
The performance of consumer cyclicals is highly related to the state of the economy. They represent goods and services that are not considered necessities but discretionary purchases.

| Ticker | Company Name                 | Price (Intraday) | Avg Vol (3 month) | Market Cap (Billion) | PE Ratio (TTM) | 
|--------|------------------------------|-----------------:|------------------:|---------------------:|---------------:|
| AZO    | AutoZone, Inc.               |         2,326.61 |           145,529 |                43.66 |          19.57 |  
| BKNG   | Booking Holdings Inc.        |         2,401.58 |           341,614 |               93.156 |          39.56 |  
| CMG    | Chipotle Mexican Grill, Inc. |         1,555.19 |           295,773 |               43.112 |          52.42 | 
| HMC    | Honda Motor Co., Ltd.        |            23.95 |           1124000 |               40.519 |           8.01 |  
| LULU   | Lululemon Athletica Inc.     |            312.8 |           1828000 |               39.887 |          34.99 |
| LVS    | Las Vegas Sands Corp.        |            54.57 |           5677000 |               41.701 |          22.57 |   
| MAR    | Marriott International, Inc. |           166.91 |           1957000 |               52.834 |          25.48 |  
| ORLY   | O'Reilly Automotive, Inc.    |           793.38 |           455,070 |               49.646 |          24.25 | 
| ROST   | Ross Stores, Inc.            |           115.73 |         2,642,000 |               39.854 |          28.02 |
| YUM    | Yum! Brands, Inc.            |           126.63 |         1,799,000 |                35.67 |          28.85 |

Tickers utilized to represent the consumer cyclicals sector were selected based off of market cap from simplywall.st. The companies listed in the figure below all have the highest market caps in the materials sector raging from $35.67 billion to $93.156 billion.

![mkt_cap](mkt_cap.png)

Using yahoo finance, historical ticker data for each stock was pulled from January 18th 2013 to January 18th 2023. Yahoo finance provides CSV files with date of information; open, high, low, close, adj_close, and volume. For this project we are only interested in volume, high, and low data. Thus, SQL was used to pull and merge data from individual csv files.

### Example of SQL code
![sql_ex](sql_ex.PNG)

![sql_ex2](sql_ex2.PNG)

![sql_ex3](sql_ex3.PNG)


However, as we are trying to merge multiple data sets across different sectors, it was found that the data needs to be normalized. In this case, MinMaxScaler from sklearn.preprocessing was used to normalize volume, high, and low to a set of data point between 0 and 1. This allows us to compare our large sets of data more accurately. 

### Scaler Python Code
![scale](scale.PNG)
