echo "____________________________________"
cat ../reviews-dest-rules.yaml
echo "____________________________________"
kubectl apply -f ../reviews-dest-rules.yaml
echo "____________________________________"
kubectl get destinationrules
echo "____________________________________"

