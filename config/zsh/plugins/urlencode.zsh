urlencode() {
	setopt localoptions extendedglob
	input=( ${(s::)1} )
	print ${(j::)input/(#b)([^A-Za-z0-9_.\!~*\'\(\)-])/%${(l:2::0:)$(([##16]#match))}}
}
