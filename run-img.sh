if [${1} = ""]; then 
	echo "Informe uma tag para a imagem - /run-img.sh <tag>"
else 
	docker run -d -p 80:9080 -p 443:9443 demo/openapi-sample:${1}
fi
