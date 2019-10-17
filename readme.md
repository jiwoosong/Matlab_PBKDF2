# PBKDF2 (Matlab)
## Usage
Implemented by matlab function type. You can use this function shown below.
```Matlab
password = 'Hello';
salt = '8ac17f62df3841997c4b70da314264e5';
iteration = 100;
dklen = 16;

hash = PBKDF2(hash_method, password, salt, iteration, dklen)
```

## Requirements
Matlab & python 2 or 3
