echo "____________________________________"
cat ../reviews-vs-steering.yaml
echo "____________________________________"
kubectl apply -f ../reviews-vs-steering.yaml
echo "____________________________________"
kubectl get virtualservice
echo "____________________________________"

