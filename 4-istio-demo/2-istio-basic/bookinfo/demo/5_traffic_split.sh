echo "____________________________________"
cat ../reviews-vs-split.yaml
echo "____________________________________"
kubectl apply -f ../reviews-vs-split.yaml
echo "____________________________________"
kubectl get virtualservice
echo "____________________________________"

