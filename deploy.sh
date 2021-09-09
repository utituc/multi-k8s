docker build -t utituc/multi-client:latest -t utituc/multi-client:$SHA -f ./client/Dockerfile ./client
docker build -t utituc/multi-server:latest -t utituc/multi-server:$SHA -f ./server/Dockerfile ./server
docker build -t utituc/multi-worker:latest -t utituc/multi-worker:$SHA -f ./worker/Dockerfile ./worker

docker push utituc/multi-client:latest
docker push utituc/multi-server:latest
docker push utituc/multi-worker:latest

docker push utituc/multi-client:$SHA
docker push utituc/multi-server:$SHA
docker push utituc/multi-worker:$SHA

kubectl apply -f k8s 

kubectl set image deployments/server-deployment server=utituc/multi-server:$SHA
kubectl set image deployments/client-deployment client=utituc/multi-client:$SHA
kubectl set image deployments/worker-deployment worker=utituc/multi-worker:$SHA
