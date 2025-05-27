if [ $# -eq 1 ]; then
	npx sv@latest create $1
    cd ./$1
    npx sv@0.6.18 add tailwindcss && npx shadcn-svelte@latest init && npm install lucide-svelte && npm install bits-ui && cp ~/code/kevinkowalew/svelte/apigateway-frontend/Makefile .
else
	echo You must provide a single project name as an argument
fi
