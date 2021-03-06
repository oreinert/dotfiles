alias dir='ls -lhaF'
alias ll='ls -lF'
alias la='ls -aF'
alias lla='ls -laF'
alias lh='ls -hF'
alias llh='ls -lhF'

alias lz='unzip -l $*'

alias dd="dd bs=4M iflag=fullblock oflag=direct"
alias flush_diskcaches='sync ; sudo sh -c "echo 3 > /proc/sys/vm/drop_caches"'

alias rpmqd="rpm -qa --queryformat '%{installtime} %{installtime:date}\t%{name}-%{version}-%{release}\n' | sort -nr +1 | sed -e 's/^[^ ]* //'"
alias rpmdisturl='rpm -q --qf "%{disturl}\n"'

alias wget-docstruct='wget -r -k -p -np -nv'

alias catcert="openssl x509 -text -noout -certopt no_pubkey,no_sigdump -in"
alias catreq="openssl req -text -noout -reqopt no_pubkey,no_sigdump -in"
alias catcrl="openssl crl -text -noout -in"
alias catp12="openssl pkcs12 -info -in"
