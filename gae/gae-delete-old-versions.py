import subprocess
import os, sys

gcloud = os.getenv('GCLOUD_BIN', '/opt/google-cloud-sdk/bin/gcloud')

c = -5
if len(sys.argv) > 1:
	c = int(sys.argv[1])

r = subprocess.check_output([gcloud, 'app', 'versions', 'list', '--service', 'default', '--sort-by', 'LAST_DEPLOYED']).decode('utf-8')
print(r)

ss = r.splitlines()
cnt = len(ss) - 1
if cnt > 1:
	if c >= cnt:
		c = cnt - 1
	elif c < 0:
		c = cnt + c

	i = 0
	for s in ss:
		if i > 0 and c > 0:
			print('DELETE> %s' % s)
			v = s.split()[1]
			r = subprocess.check_output([gcloud, 'app', 'versions', 'delete', v, '--service', 'default', '-q' ]).decode('utf-8')
			print(r)
			c -= 1
		i += 1

