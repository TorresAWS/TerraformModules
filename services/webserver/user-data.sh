#!/bin/bash
cat > index.html <<EOF
<h1> Hello! </h1>
<p>DB Address:	${db-address}</p>
<p>DB Port:	${db-port}</p>
EOF
nohup busybox httpd -f -p ${server_port}  &
