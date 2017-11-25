kubectl run php-apache --image=gcr.io/google_containers/hpa-example --requests=cpu=200m --expose --port=80

kubectl autoscale deployment php-apache --cpu-percent=50 --min=1 --max=10

kubectl run -i --tty load-generator --image=busybox /bin/sh
> while true; do wget -q -O- http://php-apache.default.svc.cluster.local; done

kubectl get hpa

kubectl get deployment php-apache