import pandas as pd

def modifySalaryColumn(employees: pd.DataFrame) -> pd.DataFrame:
    filt = employees['salary']*2
    employees['salary'] = filt
    return employees