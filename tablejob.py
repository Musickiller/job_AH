##### SOLUTION #####
def mapper(values, param:bool):
    if param:
        return values
    else:
        if values == ['no']:
            return None
        elif values == None:
            return ['any']
        else:
            return values

##### TEST #####
array = [
    (['no'], False),
    (None, True),
    (['no'], True),
    (None, False),
    (['no', 'phone'], True),
    (['no', 'phone'], False),
    (['phone'], True),
    (['phone'], False),
    (['phone', 'email'], True),
    (['phone', 'email', 'skype'], False),
    (None, "42")
    ]

for val in array:
    value, param = val
    print (mapper(value, param))
