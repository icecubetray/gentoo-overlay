#!/bin/sh

if [ ${#} -lt 1 ]; then
	cat <<-EOF >&2
	Usage: ${0} DIR...
	EOF

	exit 1;
fi

find "${@}" \( -type f -or -type l \) -name '*.ebuild' -exec ebuild {} digest \;
