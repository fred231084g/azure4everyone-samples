# code 02-example-var-inner-vs-outer.json

demo=02-example-var-inner-vs-outer

az group create \
    -n $demo \
    -l northeurope

az group deployment create \
    -g $demo \
    --template-file $demo.json \
    --query "properties.outputs" \
    --output jsonc