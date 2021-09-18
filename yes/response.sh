#!/bin/bash

# ...
# in the middle of some long script
# obtain a response from the user
# ...

echo "Are you happy to proceed? [y,n]"
read input

# did we get an input value?
if [ "$input" == "" ]; then

   echo "Nothing was entered by the user"

# was it a y or a yes?
elif [[ "$input" == "y" ]] || [[ "$input" == "yes" ]]; then

   echo "Positive response: $input"

# treat anything else as a negative response
else

   echo "negative response: $input"

fi
