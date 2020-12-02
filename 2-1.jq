# cat 2-1.input | jq -sRf 2-1.jq

# Counts the occurances of a needle in a haystack
def count(s): split(s) | length - 1;

# For each line
split("\n") | map(
	# Cheap way to split into parts
	split("[ :-]";"") as $parts | 
	# Count the instances of the target character in the password
	($parts[4] | count($parts[2])) as $cnt |
	# Limit to matches
	select($cnt >= ($parts[0] | tonumber) and $cnt <= ($parts[1] | tonumber))
# Count the results
) | length