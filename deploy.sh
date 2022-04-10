helm package ./charts/{imagebuild,springboot,gitbuild} --destination ./pkgs/. --version 0.7.0
helm repo index  --url https://jatinderkumarchaurasia.github.io/flowkind-charts/ .

git add -A .
git push -u origin main

sleep 20
helm repo update
helm search repo dfs