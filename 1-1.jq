# cat 1-1.input | jq -sf 1-1.jq

# Technically does extra work by calculating each combination twice
combinations(2) | select(.[0] + .[1] == 2020) | .[0] * .[1]