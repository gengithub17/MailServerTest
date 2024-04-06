$TTL	86400
@	IN	SOA	sender.com. root.sender.com 1 10800 3600 604800 3600
@	IN	NS	localhost.
@	IN	A	172.19.0.2
@	IN	MX	10 sender.com.
