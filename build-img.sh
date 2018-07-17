if [${1} = ""]; then 
	echo "Informe uma tag para a imagem - /build-img.sh <tag>"
else 
	docker build -t demo/openapi-sample:${1} .
fi
