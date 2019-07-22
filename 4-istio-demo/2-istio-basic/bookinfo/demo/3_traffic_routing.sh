echo "____________________________________"
cat ../reviews-virtualservice.yaml
echo "____________________________________"
kubectl apply -f ../reviews-virtualservice.yaml
echo "____________________________________"
kubectl get virtualservice
echo "____________________________________"

