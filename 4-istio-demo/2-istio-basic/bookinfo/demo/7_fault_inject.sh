echo "____________________________________"
cat ../reviews-vs-fault-inject.yaml
echo "____________________________________"
kubectl apply -f ../reviews-vs-fault-inject.yaml
echo "____________________________________"
kubectl get virtualservice
echo "____________________________________"

