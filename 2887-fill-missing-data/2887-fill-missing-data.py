import pandas as pd

def fillMissingValues(products: pd.DataFrame) -> pd.DataFrame:
    filt = products['quantity'].fillna(0)
    products['quantity']= filt
    return products