$TTL	86400
@	IN	SOA	receiver.com. root.receiver.com 1 10800 3600 604800 3600
@	IN	NS	localhost.
@	IN	A	172.19.0.4
@	IN	MX	10 receiver.com.
