# cat 2-2.input | jq -sRf 2-2.jq
def xor($a;$b): ($a or $b) and (($a and $b) | not);

# For each line
split("\n") | map(
	# Cheap way to split into parts
	split("[ :-]";"") as $parts | 
	# Can't index strings, need to make an array of chars first
	($parts[4] | split("")) as $chars |
	# Limit to matches
	select(xor(
		$chars[($parts[0] | tonumber - 1)] == $parts[2];
		$chars[($parts[1] | tonumber - 1)] == $parts[2]
	))
# Count the results
) | length