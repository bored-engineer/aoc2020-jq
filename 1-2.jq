# cat 1-2.input | jq -sf 1-2.jq

# Same problem as the solution from 1-1 but even worse
combinations(3) | select(.[0] + .[1] + .[2] == 2020) | .[0] * .[1] * .[2]