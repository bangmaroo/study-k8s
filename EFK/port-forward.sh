kubectl port-forward svc/flask-example -n jkkim 8080:8080 --address=0.0.0.0 &
kubectl port-forward svc/kibana-svc -n elastic 5601:5601 --address=0.0.0.0 &

