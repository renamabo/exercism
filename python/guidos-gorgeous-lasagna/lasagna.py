"""Functions used in preparing Guido's gorgeous lasagna."""

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME = 2

def bake_time_remaining(time):
    '''This will subtract the current time baked from the total expected bake time to return the solution.'''
    return EXPECTED_BAKE_TIME - time

print(bake_time_remaining.__doc__)

def preparation_time_in_minutes(layer):
    '''This will take the # of layers as an argument and multiply them by the preparation time. (2 mins)'''
    return layer * PREPARATION_TIME

print(preparation_time_in_minutes.__doc__)

def elapsed_time_in_minutes(layers, time):
    '''This will take 2 arguments: one is the number of layers, the second is time'''
    return preparation_time_in_minutes(layers) + time

print(elapsed_time_in_minutes.__doc__)
