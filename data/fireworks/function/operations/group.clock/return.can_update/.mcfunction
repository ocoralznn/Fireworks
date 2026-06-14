# The following code is commented out because it does not support the /time rate command correctly.
# The current version does not return a value, so the pack can be released without issues.
# However, this needs to be reviewed and fixed in the future to ensure the clock operates at the correct speed when the time rate is changed.

# execute \
#    unless predicate {\
#        condition:"minecraft:time_check",\
#        clock:"minecraft:overworld",\
#        value:0,\
#        period:16\
#    } run return 1