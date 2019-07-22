echo "____________________________________"
cat ../bookinfo-gateway.yaml
echo "____________________________________"

cat ../bookinfo-virtualservice.yaml
echo "____________________________________"

kubectl apply -f ../bookinfo-gateway.yaml
kubectl apply -f ../bookinfo-virtualservice.yaml

echo "____________________________________"
kubectl get gateway
echo "____________________________________"
kubectl get virtualservice 
echo "____________________________________"

export INGRESS_HOST=$(kubectl get po -l istio=ingressgateway -n istio-system -o 'jsonpath={.items[0].status.hostIP}')
export INGRESS_PORT=$(kubectl -n istio-system get service istio-ingressgateway -o jsonpath='{.spec.ports[?(@.name=="http2")].nodePort}')
export GATEWAY_URL=$INGRESS_HOST:$INGRESS_PORT
echo "Bookinfo URL : http://"$GATEWAY_URL"/productpage"
curl -o /dev/null -s -w "%{http_code}\n" http://${GATEWAY_URL}/productpage

