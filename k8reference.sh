kubectl create  -f ./pod.json
cat pod.json | kubectl create  -f -
kubectl create  -f docker-registry.yaml --edit  -o json
kubectl create -f FILENAME 
kubectl create clusterrole pod-reader  --verb =get,list,watch  --resource =pods
kubectl create clusterrole pod-reader  --verb =get  --resource =pods  --resource-name =readablepod  --resource-name =anotherpod
kubectl create clusterrole foo  --verb =get,list,watch  --resource =rs.extensions
kubectl create clusterrole foo  --verb =get,list,watch  --resource =pods,pods/status
kubectl create clusterrole  "foo"   --verb =get  --non-resource-url =/logs/*
kubectl create  clusterrole monitoring   --aggregation-rule="rbac.example.com/aggregate-to-monitoring=true" 
kubectl create clusterrole NAME --verb=verb --resource=resource.group [--resource-name=resourcename] [--dry-run=server|client|none] 
kubectl create clusterrolebinding cluster-admin  --clusterrole =cluster-admin  --user =user1  --user =user2  --group =group1
kubectl create clusterrolebinding NAME --clusterrole=NAME [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl create  configmap my-config --from -file=path /to /bar
kubectl create configmap my-config --from -file =key1= /path/ to /bar/ file1.txt --from -file =key2= /path/ to /bar/ file2.txt
kubectl create configmap my-config  --from-literal =key1=config1  --from-literal =key2=config2
kubectl create  configmap my-config --from -file=path /to /bar
kubectl create  configmap my-config --from -env-file=path /to /bar.env
kubectl create configmap NAME [--from-file=[key=]source] [--from-literal=key1=value1] [--dry-run=server|client|none] 
kubectl create cronjob my-job  --image =busybox  --schedule = "*/1 * * * *" 
kubectl create cronjob my-job  --image =busybox  --schedule = "*/1 * * * *"  -- date
kubectl create cronjob NAME --image=image --schedule=&#39;0/5 * * * ?&#39; -- [COMMAND] [args...] 
kubectl create deployment my -dep  --image=busybox 
kubectl create deployment my -dep  --image=busybox -- date 
kubectl create deployment my-dep  --image =nginx  --replicas =3
kubectl create deployment my-dep  --image =busybox  --port =5701
kubectl create deployment NAME --image=image -- [COMMAND] [args...] 
kubectl create ingress  simple   --rule = "foo.com/bar=svc1:8080,tls=my-cert" 
kubectl create ingress catch -all --class =otheringress --rule= "/path=svc:port" 
kubectl create ingress annotated  --class =default  --rule = "foo.com/bar=svc:port"  \
kubectl create ingress multipath  --class =default \
kubectl create ingress ingress1  --class =default \
kubectl create ingress ingtls  --class =default \
kubectl create ingress ingsecret --class =default  \
kubectl create ingress ingdefault  --class =default \
kubectl create ingress NAME --rule=host/path=service:port[,tls[=secret]] 
kubectl create job my -job  --image=busybox 
kubectl create job  my-job  --image=busybox  -- date
kubectl create  job test -job  --from=cronjob/a-cronjob 
kubectl create job NAME --image=image [--from=cronjob/name] -- [COMMAND] [args...] 
kubectl create  namespace  my-namespace 
kubectl create namespace NAME [--dry-run=server|client|none] 
kubectl create poddisruptionbudget my-pdb  --selector =app=rails  --min-available =1
kubectl create pdb my-pdb  --selector =app=nginx  --min-available =50%
kubectl create poddisruptionbudget NAME --selector=SELECTOR --min-available=N [--dry-run=server|client|none] 
kubectl create priorityclass high-priority  --value =1000  --description = "high priority" 
kubectl create priorityclass default -priority --value = 1000  --global -default = true  --description= "default priority" 
kubectl create priorityclass high-priority  --value =1000  --description = "high priority"   --preemption-policy = "Never" 
kubectl create priorityclass NAME --value=VALUE --global-default=BOOL [--dry-run=server|client|none] 
kubectl create quota my-quota --hard=cpu= 1 ,memory= 1 G,pods= 2 ,services= 3 ,replicationcontrollers= 2 ,resourcequotas= 1 ,secrets= 5 ,persistentvolumeclaims= 10 
kubectl create quota best-effort  --hard =pods=100  --scopes =BestEffort
kubectl create quota NAME [--hard=key1=value1,key2=value2] [--scopes=Scope1,Scope2] [--dry-run=server|client|none] 
kubectl create role pod-reader  --verb =get  --verb =list  --verb =watch  --resource =pods
kubectl create role pod-reader  --verb =get  --resource =pods  --resource-name =readablepod  --resource-name =anotherpod
kubectl create role foo  --verb =get,list,watch  --resource =rs.extensions
kubectl create role foo  --verb =get,list,watch  --resource =pods,pods/status
kubectl create role NAME --verb=verb --resource=resource.group/subresource [--resource-name=resourcename] [--dry-run=server|client|none] 
kubectl create rolebinding admin  --clusterrole =admin  --user =user1  --user =user2  --group =group1
kubectl create rolebinding NAME --clusterrole=NAME|--role=NAME [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl create secret 
kubectl create  secret  docker-registry my-secret  --docker-server =DOCKER_REGISTRY_SERVER  --docker-username =DOCKER_USER  --docker-password =DOCKER_PASSWORD  --docker-email =DOCKER_EMAIL
kubectl create  secret  docker-registry my-secret  --from-file =.dockerconfigjson=path/to/.docker/config.json
kubectl create secret docker-registry NAME --docker-username=user --docker-password=password --docker-email=email [--docker-server=string] [--from-file=[key=]source] [--dry-run=server|client|none]
kubectl create  secret  generic my-secret  --from-file =path/to/bar
kubectl create  secret  generic my-secret  --from-file =ssh-privatekey=path/to/id_rsa  --from-file =ssh-publickey=path/to/id_rsa.pub
kubectl create  secret  generic my-secret  --from-literal =key1=supersecret  --from-literal =key2=topsecret
kubectl create  secret  generic my-secret  --from-file =ssh-privatekey=path/to/id_rsa  --from-literal =passphrase=topsecret
kubectl create  secret  generic my-secret  --from-env-file =path/to/bar.env
kubectl create generic NAME [--type=string] [--from-file=[key=]source] [--from-literal=key1=value1] [--dry-run=server|client|none] 
kubectl create  secret  tls tls-secret  --cert =path/to/tls.cert  --key =path/to/tls.key
kubectl create secret tls NAME --cert=path/to/cert/file --key=path/to/key/file [--dry-run=server|client|none] 
kubectl create service 
kubectl create  service  clusterip my-cs  --tcp =5678:8080
kubectl create  service  clusterip my-cs  --clusterip = "None" 
kubectl create service clusterip NAME [--tcp=&lt;port&gt;:&lt;targetPort&gt;] [--dry-run=server|client|none] 
kubectl create  service  externalname my-ns --external-name bar.com
kubectl create service externalname NAME --external-name external.name [--dry-run=server|client|none] 
kubectl create  service  loadbalancer my-lbs  --tcp =5678:8080
kubectl create service loadbalancer NAME [--tcp=port:targetPort] [--dry-run=server|client|none] 
kubectl create  service  nodeport my-ns  --tcp =5678:8080
kubectl create service nodeport NAME [--tcp=port:targetPort] [--dry-run=server|client|none] 
kubectl create  serviceaccount my-service-account 
kubectl create serviceaccount NAME [--dry-run=server|client|none] 
kubectl  get  pods
kubectl  get  pods -o wide
kubectl  get  replicationcontroller web
<span class="hljs-selector-tag">kubectl  <span class="hljs-selector-tag">get  <span class="hljs-selector-tag">deployments  .v1  .apps  <span class="hljs-selector-tag">-o  <span class="hljs-selector-tag">json 
kubectl get  -o <span class="hljs-type">json  pod web-pod -13 je7
kubectl get  -f pod.yaml -o <span class="hljs-type">json 
kubectl  get  -k dir/
kubectl  get  -o template  pod/web-pod -13 je7 --template ={{.status.phase}}
kubectl  get  pod test-pod -o  custom-columns =CONTAINER:.spec.containers[0].name,IMAGE:.spec.containers[0].image
kubectl  get  rc,services
kubectl  get  rc/web service/frontend pods/web-pod-13je7
kubectl get [(-o|--output=)json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file|custom-columns|custom-columns-file|wide] (TYPE[.VERSION][.GROUP] [NAME | -l label] | TYPE[.VERSION][.GROUP]/NAME ...) [flags] 
kubectl  run  nginx  --image =nginx
kubectl  run  hazelcast  --image =hazelcast/hazelcast  --port =5701
kubectl  run  hazelcast  --image =hazelcast/hazelcast  --env = "DNS_DOMAIN=cluster"   --env = "POD_NAMESPACE=default" 
kubectl  run  hazelcast  --image =hazelcast/hazelcast  --labels = "app=hazelcast,env=prod" 
kubectl  run  nginx  --image =nginx  --dry-run =client
kubectl run nginx  --image=nginx   --overrides= '{  "apiVersion" :  "v1" ,  "spec" : {  ...  } }'
kubectl  run  -i -t busybox  --image =busybox  --restart =Never
kubectl  run  nginx  --image =nginx -- &lt;arg1&gt; &lt;arg2&gt;  .. . &lt;argN&gt;
kubectl  run  nginx  --image =nginx --command -- &lt;cmd&gt; &lt;arg1&gt;  .. . &lt;argN&gt;
kubectl run NAME --image=image [--env=&quot;key=value&quot;] [--port=port] [--dry-run=server|client] [--overrides=inline-json] [--command] -- [COMMAND] [args...] 
kubectl expose rc nginx  --port =80  --target-port =8000
kubectl expose -f nginx-controller.yaml  --port =80  --target-port =8000
kubectl expose pod valid-pod  --port =444  --name =frontend
kubectl expose  service  nginx  --port =443  --target-port =8443  --name =nginx-https
kubectl expose rc streamer  --port =4100  --protocol =UDP  --name =video-stream
kubectl expose rs nginx  --port =80  --target-port =8000
kubectl expose deployment nginx  --port =80  --target-port =8000
kubectl expose (-f FILENAME | TYPE NAME) [--port=port] [--protocol=TCP|UDP|SCTP] [--target-port=number-or-name] [--name=name] [--external-ip=external-ip-of-service] [--type=type] 
kubectl delete  -f ./pod.json
kubectl delete  -k dir
cat pod.json |kubectl delete  -f -
kubectl delete  pod,service baz foo
kubectl delete  pods,services -l <span class="hljs-type">name =myLabel
kubectl  delete  pod foo  --now 
kubectl  delete  pod foo  --force 
kubectl  delete  pods  --all 
kubectl delete ([-f FILENAME] | [-k DIRECTORY] | TYPE [(NAME | -l label | --all)]) 
kubectl  apply  -f ./pod.json
kubectl  apply  -k dir/
cat pod.json | <span class="hljs-type">kubectl   apply  -f -
kubectl apply --prune -f manifest.yaml -l  app =nginx
kubectl   apply  -- prune   -  f   manifest  .  yaml  -- all  -- prune  -  whitelist=core/v1/ConfigMap 
kubectl apply (-f FILENAME | -k DIRECTORY) 
kubectl  apply  edit- last -applied deployment/nginx
kubectl  apply  edit- last -applied -f deploy.yaml -o json
kubectl apply edit-last-applied (RESOURCE/NAME | -f FILENAME) 
kubectl   apply   set-last-applied  -f  deploy.  yaml 
kubectl   apply   set-last-applied  -f  path/ 
kubectl   apply   set-last-applied  -f  deploy.  yaml   --create-annotation=true 
kubectl apply set-last-applied -f FILENAME 
kubectl  apply   view - last -applied deployment/nginx
kubectl  apply   view - last -applied -f deploy.yaml -o json
kubectl apply view-last-applied (TYPE [NAME | -l label] | TYPE/NAME | -f FILENAME) 
kubectl annotate pods foo description = 'my frontend' 
kubectl annotate -f pod.json description = 'my frontend' 
kubectl   annotate   --overwrite   pods   foo   description=  'my frontend running nginx' 
kubectl   annotate   pods   --all   description=  'my frontend running nginx' 
kubectl annotate pods foo  description = 'my frontend running nginx'   --resource-version =1
kubectl annotate pods foo description -
kubectl annotate [--overwrite] (-f FILENAME | TYPE NAME) KEY_1=VAL_1 ... KEY_N=VAL_N [--resource-version=version] 
kubectl autoscale deployment foo  --min =2  --max =10
kubectl autoscale rc foo  --max =5  --cpu-percent =80
kubectl autoscale (-f FILENAME | TYPE NAME | TYPE/NAME) [--min=MINPODS] --max=MAXPODS [--cpu-percent=CPU] 
kubectl  debug  mypod -it  --image =busybox
kubectl  debug   --image =myproj/debug-tools -c debugger mypod
kubectl  debug  mypod -it  --image =busybox  --copy-to =my-debugger
kubectl  debug  mypod -it  --copy-to =my-debugger  --container =mycontainer -- sh
kubectl  debug  mypod  --copy-to =my-debugger  --set-image =*=busybox
kubectl  debug  mypod -it  --copy-to =my-debugger  --image =debian  --set-image =app=app:debug,sidecar=sidecar:debug
kubectl debug node <span class="hljs-title">/mynode  -it --<span class="hljs-attr">image= busybox
kubectl debug (POD | TYPE[[.VERSION].GROUP]/NAME) [ -- COMMAND [args...] ] 
kubectl  diff  -f  pod  .json 
cat service.yaml  |kubectl diff -f - 
kubectl diff -f FILENAME 
kubectl  edit  svc/docker-registry
 KUBE_EDITOR = "nano" kubectl  edit  svc/docker-registry
kubectl  edit  job.v1.batch/myjob -o json
kubectl edit  deployment/mydeployment -o yaml --save -config
kubectl edit (RESOURCE/NAME | -f FILENAME) 
kubectl kustomize 
kubectl kustomize / home / config /production
kubectl kustomize https: //gi thub.com /kubernetes-sigs/ kustomize.git /examples/ helloWorld?ref=v1. 0.6 
kubectl kustomize DIR 
kubectl label   pods foo unhealthy= true  
kubectl label   --overwrite pods foo status=unhealthy 
kubectl label   pods --all status=unhealthy 
kubectl label   -f pod.json status=unhealthy 
kubectl label pods foo  status =unhealthy  --resource-version =1
kubectl label   pods foo bar- 
kubectl label [--overwrite] (-f FILENAME | TYPE NAME) KEY_1=VAL_1 ... KEY_N=VAL_N [--resource-version=version] 
kubectl patch node  <span class="hljs-title">k8s-node-1  -p '{ "spec" :{ "unschedulable" : true }}'
kubectl patch node  <span class="hljs-title">k8s-node-1  -p $'spec :\n unschedulable:  true '
kubectl patch -f node .<span class="hljs-title">json  -p '{ "spec" :{ "unschedulable" : true }}'
kubectl patch  pod valid-pod -p '{ "spec" :{ "containers" :[{ "name" : "kubernetes-serve-hostname" , "image" : "new image" }]}}'
kubectl patch pod valid-pod --type  ='jso n' -p='[{ "op" :  "replace" ,  "path" :  "/spec/containers/0/image" ,  "value" : "new image" }]'
kubectl patch (-f FILENAME | TYPE NAME) [-p PATCH|--patch-file FILE] 
kubectl  replace  -f ./pod.json
cat pod.json | <span class="hljs-type">kubectl   replace  -f -
kubectl get pod mypod -o yaml | sed  's/\(image: myimage\):.*$/\ 1 :v4/' | kubectl   replace  -f -
kubectl replace  --force  -f  ./pod.json 
kubectl replace -f FILENAME 
kubectl rollout undo  deployment/abc 
kubectl rollout status  daemonset/foo
kubectl rollout SUBCOMMAND 
kubectl rollout history  deployment/abc 
kubectl rollout history  daemonset/abc  --revision=3 
kubectl rollout history (TYPE NAME | TYPE/NAME) [flags] 
kubectl rollout pause  deployment/nginx
kubectl rollout pause RESOURCE 
kubectl rollout  restart  deployment/nginx
kubectl rollout  restart  daemonset/abc
kubectl rollout restart RESOURCE 
kubectl rollout resume  deployment/nginx
kubectl rollout resume RESOURCE 
kubectl rollout status  deployment/nginx
kubectl rollout status (TYPE NAME | TYPE/NAME) [flags] 
kubectl rollout undo  deployment/abc 
kubectl rollout undo  daemonset/abc  --to -revision= 3 
kubectl rollout undo --dry-run  =server deployment/abc 
kubectl rollout undo (TYPE NAME | TYPE/NAME) [flags] 
kubectl scale  --replicas =3 rs/foo
kubectl scale  --replicas =3 -f foo.yaml
kubectl scale  --current-replicas =2  --replicas =3 deployment/mysql
kubectl  scale  --replicas= 5  rc/foo rc/ bar  rc/baz
kubectl scale  --replicas =3 statefulset/web
kubectl scale [--resource-version=version] [--current-replicas=count] --replicas=COUNT (-f FILENAME | TYPE NAME) 
kubectl set SUBCOMMAND 
kubectl  set  env deployment/registry  STORAGE_DIR =/local
kubectl set  env deployment/sample -build   --list 
kubectl set  env pods  --all   --list 
kubectl  set  env deployment/sample-build  STORAGE_DIR =/data -o yaml
kubectl  set  env rc --all  ENV =prod
kubectl  set  env  --from =secret/mysecret deployment/myapp
kubectl  set  env  --from =configmap/myconfigmap  --prefix =MYSQL_ deployment/myapp
kubectl  set  env  --keys =my-example-key  --from =configmap/myconfigmap deployment/myapp
kubectl set  env deployments  --all   --containers=  "c1"  ENV-
kubectl set env  -f deploy.json ENV -
env | grep  RAILS_ | kubectl   set  env -e - deployment/registry
kubectl set env RESOURCE/NAME KEY_1=VAL_1 ... KEY_N=VAL_N 
kubectl  set  image deployment/nginx  busybox =busybox  nginx =nginx:1.9.1
kubectl  set  image deployments,rc  nginx =nginx:1.9.1 --all
kubectl set  image daemonset abc *=nginx: 1.9  .1 
kubectl  set  image -f path/to /file.yaml  nginx =nginx:1.9.1 --local -o yaml
kubectl set image (-f FILENAME | TYPE NAME) CONTAINER_NAME_1=CONTAINER_IMAGE_1 ... CONTAINER_NAME_N=CONTAINER_IMAGE_N 
kubectl  set  resources deployment nginx  -c =nginx  --limits =cpu=200m,memory=512Mi
kubectl  set  resources deployment nginx  --limits =cpu=200m,memory=512Mi  --requests =cpu=100m,memory=256Mi
kubectl  set  resources deployment nginx  --limits =cpu=0,memory=0  --requests =cpu=0,memory=0
kubectl  set  resources -f path/to /file.yaml  --limits =cpu=200m,memory=512Mi --local -o yaml
kubectl set resources (-f FILENAME | TYPE NAME)  ([--limits=LIMITS &amp; --requests=REQUESTS] 
kubectl create  service  clusterip my-svc  --clusterip = "None"  -o yaml  --dry-run =client |kubectl  set  selector --local -f -  'environment=qa'  -o yaml |kubectl create -f -
kubectl set selector (-f FILENAME | TYPE NAME) EXPRESSIONS [--resource-version=version] 
kubectl set  serviceaccount  deployment nginx-deployment serviceaccount1 
kubectl  set  sa -f nginx-deployment.yaml serviceaccount1 --local  --dry-run =client -o yaml
kubectl set serviceaccount (-f FILENAME | TYPE NAME) SERVICE_ACCOUNT 
kubectl  set  subject clusterrolebinding admin  --serviceaccount =namespace:serviceaccount1
kubectl  set  subject rolebinding admin  --user =user1  --user =user2  --group =group1
kubectl create rolebinding admin  --role =admin  --user =admin -o yaml  --dry-run =client |kubectl  set  subject --local -f -  --user =foo -o yaml
kubectl set subject (-f FILENAME | TYPE NAME) [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl  wait   --for=condition=Ready pod/busybox1 
kubectl  wait  --for =condition=Ready= false  pod/busybox1
kubectl delete pod/busybox1
kubectl wait ([-f FILENAME] | resource.group/resource.name | resource.group [(-l label | --all)]) [--for=delete|--for condition=available] 
kubectl  attach  mypod
kubectl  attach  mypod -c ruby-container
kubectl  attach  mypod -c ruby-container -i -t
kubectl  attach  rs/nginx
kubectl attach (POD | TYPE/NAME) -c CONTAINER 
kubectl auth 
kubectl auth can-i  create  pods  --all-namespaces 
kubectl auth can-i  list  deployments.apps
kubectl auth can- i   '*'   '*' 
kubectl auth can-i  list  jobs.batch/bar -n foo
kubectl auth can-i  get  pods  --subresource =log
kubectl auth can-i  get  /logs/
kubectl auth can-i --list --namespace =foo 
kubectl auth can-i VERB [TYPE | TYPE/NAME | NONRESOURCEURL] 
kubectl auth reconcile -f my -rbac-rules.yaml
kubectl auth reconcile -f FILENAME 
tar cf -  /tmp/ foo |kubectl exec -i -n  &lt;some-namespace&gt;   &lt;some-pod&gt;  -- tar xf - -C  /tmp/ bar
kubectl exec -n  &lt;some-namespace&gt;   &lt;some-pod&gt;  -- tar cf -  /tmp/ foo | tar xf - -C  /tmp/ bar
kubectl cp /tmp/foo_dir &lt;some-pod&gt;:/tmp/bar_dir 
kubectl cp  /tmp/ foo  &lt;some-pod&gt; : /tmp/ bar -c  &lt;specific-container&gt; 
kubectl cp  /tmp/ foo  &lt;some-namespace&gt; / &lt;some-pod&gt; : /tmp/ bar
kubectl cp  &lt;some-namespace&gt; / &lt;some-pod&gt; : /tmp/ foo  /tmp/ bar
kubectl cp &lt;file-spec-src&gt; &lt;file-spec-dest&gt; 
kubectl describe nodes kubernetes-node <span class="hljs-title">-emt8 .c.myproject.internal
kubectl  describe  pods/nginx
kubectl  describe  -f  pod  .json 
kubectl describe pods 
kubectl describe po -l  name =myLabel
kubectl describe pods frontend 
kubectl describe (-f FILENAME | TYPE [NAME_PREFIX | -l label] | TYPE/NAME) 
kubectl  exec  mypod --  date 
kubectl exec  mypod -c ruby-container  -- date 
kubectl exec  mypod -c ruby-container  -i -t -- bash -il
kubectl exec mypod -i - t  -- ls - t  /usr
kubectl  exec  deploy/mydeployment --  date 
kubectl  exec  svc/myservice --  date 
kubectl exec (POD | TYPE/NAME) [-c CONTAINER] [flags] -- COMMAND [args...] 
kubectl logs nginx 
kubectl logs nginx -- all -containers= true 
kubectl logs -l  app =nginx  --all-containers = true 
kubectl logs -p -c ruby web -1 
kubectl logs -f -c ruby web -1 
kubectl logs -f -l  app =nginx  --all-containers = true 
kubectl logs  --tail =20 nginx
kubectl logs  --since =1h nginx
kubectl logs  --insecure-skip-tls-verify-backend nginx 
kubectl logs job /hello
kubectl logs deployment/nginx -c nginx -1 
kubectl logs [-f] [-p] (POD | TYPE/NAME) [-c CONTAINER] 
kubectl port-forward pod/mypod  5000   6000 
kubectl port-forward deployment/mydeployment  5000   6000 
kubectl port-forward service/myservice  8443 :https
kubectl port-forward pod/mypod  8888 : 5000 
kubectl port-forward --address  0.0  .0  .0  pod/mypod  8888 : 5000 
kubectl port-forward --address localhost, 10.19  .21  .23  pod/mypod  8888 : 5000 
kubectl port-forward pod/mypod : 5000 
kubectl port-forward TYPE/NAME [options] [LOCAL_PORT:]REMOTE_PORT [...[LOCAL_PORT_N:]REMOTE_PORT_N] 
kubectl  proxy   --api-prefix =/
kubectl  proxy   --www =/my/files  --www-prefix =/static/  --api-prefix =/api/
kubectl  proxy   --api-prefix =/custom/
kubectl  proxy   --port =8011  --www =./local/www/
kubectl  proxy   --port =0
kubectl  proxy   --api-prefix =/k8s-api
kubectl proxy [--port=PORT] [--www=static-dir] [--www-prefix=prefix] [--api-prefix=prefix] 
kubectl top 
kubectl top node <span class="hljs-title"> 
kubectl top node  <span class="hljs-title">NODE_NAME 
kubectl top node [NAME | -l label] 
kubectl  top  pod
kubectl top pod --namespace =NAMESPACE 
kubectl top pod POD_NAME  --containers 
kubectl top pod -l  name =myLabel
kubectl top pod [NAME | -l label] 
kubectl api-versions 
kubectl api-versions 
kubectl certificate SUBCOMMAND 
kubectl certificate approve csr-sqgzp 
kubectl certificate approve (-f FILENAME | NAME) 
kubectl certificate deny  csr-sqgzp
kubectl certificate deny (-f FILENAME | NAME) 
kubectl  cluster- info 
kubectl cluster-info 
kubectl  cluster- info  dump
kubectl cluster- info  dump  --output-directory =/path/to/cluster-state
kubectl cluster -info  dump  --all-namespaces 
kubectl cluster -info dump --namespaces default ,kube-system  --output-directory=/path/to/cluster -state
kubectl cluster-info dump 
kubectl cordon foo 
kubectl cordon NODE 
kubectl drain foo  --force 
kubectl drain foo  --grace-period =900
kubectl drain NODE 
kubectl taint nodes foo  dedicated =special-user:NoSchedule
kubectl  taint  nodes  foo  dedicated <span class="hljs-selector-pseudo">:NoSchedule- 
kubectl  taint nodes foo dedicated-
kubectl taint node  -l  myLabel= X  dedicated= foo:PreferNoSchedule
kubectl  taint  nodes  foo  bar :NoSchedule 
kubectl taint NODE NAME KEY_1=VAL_1:TAINT_EFFECT_1 ... KEY_N=VAL_N:TAINT_EFFECT_N 
kubectl uncordon foo 
kubectl uncordon NODE 
kubectl alpha 
kubectl api-resources 
kubectl api-resources -o wide 
kubectl api- resources  -- sort -by= name 
kubectl  api-resources --namespaced= true 
kubectl  api-resources --namespaced= false 
kubectl api-resources  --api-group =extensions
kubectl api-resources 
brew  install  bash-completion 
brew install bash-completion@  2 
kubectl completion bash &gt; <span class="hljs-constructor">$( brew  -- prefix ) /etc/bash_completion.d/kubectl
source &lt;(kubectl  completion bash)
kubectl  completion bash  &gt; ~/.kube/completion.bash.inc
 source   '$HOME /.kube/completion.bash.inc' 
source &lt;(kubectl  completion zsh)
kubectl  completion zsh &gt;  "${fpath[1]} /_kubectl" 
kubectl completion SHELL 
kubectl config SUBCOMMAND 
kubectl  config  current-context
kubectl config current-context 
kubectl   config   delete-cluster   minikube 
kubectl config delete-cluster NAME 
kubectl   config   delete-context   minikube 
kubectl config delete-context NAME 
kubectl   config   delete-user   minikube 
kubectl config delete-user NAME 
kubectl  config  get-clusters
kubectl config get-clusters 
kubectl  config  get-contexts
kubectl   config   get-contexts   my-context 
kubectl config get-contexts [(-o|--output=)name)] 
kubectl  config  get-users
kubectl config get-users 
kubectl  config  rename-context old-name new-name
kubectl config rename-context CONTEXT_NAME NEW_NAME 
kubectl  config   set  clusters.my-cluster.server https: //1.2.3.4 
kubectl  config   set  clusters.my-cluster.certificate-authority-data $(echo  "cert_data_here"  | base64 -i -)
kubectl  config   set  contexts.my-context.cluster my-cluster
kubectl  config   set  users.cluster-admin.client-key-data cert_data_here  --set-raw-bytes = true 
kubectl config set PROPERTY_NAME PROPERTY_VALUE 
kubectl  config  set-cluster e2e  --server =https://1.2.3.4
kubectl  config  set-cluster e2e --embed-certs  --certificate-authority =~/.kube/e2e/kubernetes.ca.crt
kubectl  config  set-cluster e2e  --insecure-skip-tls-verify = true 
kubectl  config  set-cluster e2e  --tls-server-name =my-cluster-name
kubectl config set-cluster NAME [--server=server] [--certificate-authority=path/to/certificate/authority] [--insecure-skip-tls-verify=true] [--tls-server-name=example.com] 
kubectl  config  set-context gce  --user =cluster-admin
kubectl config set-context [NAME | --current] [--cluster=cluster_nickname] [--user=user_nickname] [--namespace=namespace] 
kubectl  config  set-credentials cluster-admin  --client-key =~/.kube/admin.key
kubectl  config  set-credentials cluster-admin  --username =admin  --password =uXFGweU9l35qcif
kubectl  config  set-credentials cluster-admin  --client-certificate =~/.kube/admin.crt  --embed-certs = true 
kubectl  config  set-credentials cluster-admin  --auth-provider =gcp
kubectl  config  set-credentials cluster-admin  --auth-provider =oidc  --auth-provider-arg =client-id=foo  --auth-provider-arg =client-secret=bar
kubectl  config  set-credentials cluster-admin  --auth-provider =oidc  --auth-provider-arg =client-secret-
kubectl  config  set-credentials cluster-admin  --exec-command =/path/to/the/executable  --exec-api-version =client.authentication.k8s.io/v1beta1
kubectl  config  set-credentials cluster-admin  --exec-arg =arg1  --exec-arg =arg2
kubectl  config  set-credentials cluster-admin  --exec-env =key1=val1  --exec-env =key2=val2
kubectl  config  set-credentials cluster-admin  --exec-env =var-to-remove-
kubectl config set-credentials NAME [--client-certificate=path/to/certfile] [--client-key=path/to/keyfile] [--token=bearer_token] [--username=basic_user] [--password=basic_password] [--auth-provider=provider_name] [--auth-provider-arg=key=value] [--exec-command=exec_command] [--exec-api-version=exec_api_version] [--exec-arg=arg] [--exec-env=key=value] 
kubectl  config  unset current-context
kubectl  config  unset contexts.foo.namespace
kubectl config unset PROPERTY_NAME 
kubectl  config  use-context minikube
kubectl config use-context CONTEXT_NAME 
kubectl  config  view
kubectl  config  view --raw
kubectl  config  view -o  jsonpath = '{.users[?(@.name == "e2e")].user.password}' 
kubectl config view 
kubectl explain pods 
kubectl  explain  pods  .spec  .containers 
kubectl explain RESOURCE 
kubectl options 
kubectl options 
kubectl plugin [flags] 
kubectl plugin list 
kubectl  version 
kubectl version 
kubectl create -f FILENAME 
kubectl create clusterrole NAME --verb=verb --resource=resource.group [--resource-name=resourcename] [--dry-run=server|client|none] 
kubectl create clusterrolebinding NAME --clusterrole=NAME [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl create configmap NAME [--from-file=[key=]source] [--from-literal=key1=value1] [--dry-run=server|client|none] 
kubectl create cronjob NAME --image=image --schedule=&#39;0/5 * * * ?&#39; -- [COMMAND] [args...] 
kubectl create deployment NAME --image=image -- [COMMAND] [args...] 
kubectl create ingress NAME --rule=host/path=service:port[,tls[=secret]] 
kubectl create job NAME --image=image [--from=cronjob/name] -- [COMMAND] [args...] 
kubectl create namespace NAME [--dry-run=server|client|none] 
kubectl create poddisruptionbudget NAME --selector=SELECTOR --min-available=N [--dry-run=server|client|none] 
kubectl create priorityclass NAME --value=VALUE --global-default=BOOL [--dry-run=server|client|none] 
kubectl create quota NAME [--hard=key1=value1,key2=value2] [--scopes=Scope1,Scope2] [--dry-run=server|client|none] 
kubectl create role NAME --verb=verb --resource=resource.group/subresource [--resource-name=resourcename] [--dry-run=server|client|none] 
kubectl create rolebinding NAME --clusterrole=NAME|--role=NAME [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl create secret 
kubectl create secret docker-registry NAME --docker-username=user --docker-password=password --docker-email=email [--docker-server=string] [--from-file=[key=]source] [--dry-run=server|client|none]
kubectl create generic NAME [--type=string] [--from-file=[key=]source] [--from-literal=key1=value1] [--dry-run=server|client|none] 
kubectl create secret tls NAME --cert=path/to/cert/file --key=path/to/key/file [--dry-run=server|client|none] 
kubectl create service 
kubectl create service clusterip NAME [--tcp=&lt;port&gt;:&lt;targetPort&gt;] [--dry-run=server|client|none] 
kubectl create service externalname NAME --external-name external.name [--dry-run=server|client|none] 
kubectl create service loadbalancer NAME [--tcp=port:targetPort] [--dry-run=server|client|none] 
kubectl create service nodeport NAME [--tcp=port:targetPort] [--dry-run=server|client|none] 
kubectl create serviceaccount NAME [--dry-run=server|client|none] 
kubectl get [(-o|--output=)json|yaml|name|go-template|go-template-file|template|templatefile|jsonpath|jsonpath-as-json|jsonpath-file|custom-columns|custom-columns-file|wide] (TYPE[.VERSION][.GROUP] [NAME | -l label] | TYPE[.VERSION][.GROUP]/NAME ...) [flags] 
kubectl run NAME --image=image [--env=&quot;key=value&quot;] [--port=port] [--dry-run=server|client] [--overrides=inline-json] [--command] -- [COMMAND] [args...] 
kubectl expose (-f FILENAME | TYPE NAME) [--port=port] [--protocol=TCP|UDP|SCTP] [--target-port=number-or-name] [--name=name] [--external-ip=external-ip-of-service] [--type=type] 
kubectl delete ([-f FILENAME] | [-k DIRECTORY] | TYPE [(NAME | -l label | --all)]) 
kubectl apply (-f FILENAME | -k DIRECTORY) 
kubectl apply edit-last-applied (RESOURCE/NAME | -f FILENAME) 
kubectl apply set-last-applied -f FILENAME 
kubectl apply view-last-applied (TYPE [NAME | -l label] | TYPE/NAME | -f FILENAME) 
kubectl annotate [--overwrite] (-f FILENAME | TYPE NAME) KEY_1=VAL_1 ... KEY_N=VAL_N [--resource-version=version] 
kubectl autoscale (-f FILENAME | TYPE NAME | TYPE/NAME) [--min=MINPODS] --max=MAXPODS [--cpu-percent=CPU] 
kubectl debug (POD | TYPE[[.VERSION].GROUP]/NAME) [ -- COMMAND [args...] ] 
kubectl diff -f FILENAME 
kubectl edit (RESOURCE/NAME | -f FILENAME) 
kubectl kustomize DIR 
kubectl label [--overwrite] (-f FILENAME | TYPE NAME) KEY_1=VAL_1 ... KEY_N=VAL_N [--resource-version=version] 
kubectl patch (-f FILENAME | TYPE NAME) [-p PATCH|--patch-file FILE] 
kubectl replace -f FILENAME 
kubectl rollout SUBCOMMAND 
kubectl rollout history (TYPE NAME | TYPE/NAME) [flags] 
kubectl rollout pause RESOURCE 
kubectl rollout restart RESOURCE 
kubectl rollout resume RESOURCE 
kubectl rollout status (TYPE NAME | TYPE/NAME) [flags] 
kubectl rollout undo (TYPE NAME | TYPE/NAME) [flags] 
kubectl scale [--resource-version=version] [--current-replicas=count] --replicas=COUNT (-f FILENAME | TYPE NAME) 
kubectl set SUBCOMMAND 
kubectl set env RESOURCE/NAME KEY_1=VAL_1 ... KEY_N=VAL_N 
kubectl set image (-f FILENAME | TYPE NAME) CONTAINER_NAME_1=CONTAINER_IMAGE_1 ... CONTAINER_NAME_N=CONTAINER_IMAGE_N 
kubectl set resources (-f FILENAME | TYPE NAME)  ([--limits=LIMITS &amp; --requests=REQUESTS] 
kubectl set selector (-f FILENAME | TYPE NAME) EXPRESSIONS [--resource-version=version] 
kubectl set serviceaccount (-f FILENAME | TYPE NAME) SERVICE_ACCOUNT 
kubectl set subject (-f FILENAME | TYPE NAME) [--user=username] [--group=groupname] [--serviceaccount=namespace:serviceaccountname] [--dry-run=server|client|none] 
kubectl wait ([-f FILENAME] | resource.group/resource.name | resource.group [(-l label | --all)]) [--for=delete|--for condition=available] 
kubectl attach (POD | TYPE/NAME) -c CONTAINER 
kubectl auth 
kubectl auth can-i VERB [TYPE | TYPE/NAME | NONRESOURCEURL] 
kubectl auth reconcile -f FILENAME 
kubectl cp &lt;file-spec-src&gt; &lt;file-spec-dest&gt; 
kubectl describe (-f FILENAME | TYPE [NAME_PREFIX | -l label] | TYPE/NAME) 
kubectl exec (POD | TYPE/NAME) [-c CONTAINER] [flags] -- COMMAND [args...] 
kubectl logs [-f] [-p] (POD | TYPE/NAME) [-c CONTAINER] 
kubectl port-forward TYPE/NAME [options] [LOCAL_PORT:]REMOTE_PORT [...[LOCAL_PORT_N:]REMOTE_PORT_N] 
kubectl proxy [--port=PORT] [--www=static-dir] [--www-prefix=prefix] [--api-prefix=prefix] 
kubectl top 
kubectl top node [NAME | -l label] 
kubectl top pod [NAME | -l label] 
kubectl api-versions 
kubectl certificate SUBCOMMAND 
kubectl certificate approve (-f FILENAME | NAME) 
kubectl certificate deny (-f FILENAME | NAME) 
kubectl cluster-info 
kubectl cluster-info dump 
kubectl cordon NODE 
kubectl drain NODE 
kubectl taint NODE NAME KEY_1=VAL_1:TAINT_EFFECT_1 ... KEY_N=VAL_N:TAINT_EFFECT_N 
kubectl uncordon NODE 
kubectl alpha 
kubectl api-resources 
kubectl completion SHELL 
kubectl config SUBCOMMAND 
kubectl config current-context 
kubectl config delete-cluster NAME 
kubectl config delete-context NAME 
kubectl config delete-user NAME 
kubectl config get-clusters 
kubectl config get-contexts [(-o|--output=)name)] 
kubectl config get-users 
kubectl config rename-context CONTEXT_NAME NEW_NAME 
kubectl config set PROPERTY_NAME PROPERTY_VALUE 
kubectl config set-cluster NAME [--server=server] [--certificate-authority=path/to/certificate/authority] [--insecure-skip-tls-verify=true] [--tls-server-name=example.com] 
kubectl config set-context [NAME | --current] [--cluster=cluster_nickname] [--user=user_nickname] [--namespace=namespace] 
kubectl config set-credentials NAME [--client-certificate=path/to/certfile] [--client-key=path/to/keyfile] [--token=bearer_token] [--username=basic_user] [--password=basic_password] [--auth-provider=provider_name] [--auth-provider-arg=key=value] [--exec-command=exec_command] [--exec-api-version=exec_api_version] [--exec-arg=arg] [--exec-env=key=value] 
kubectl config unset PROPERTY_NAME 
kubectl config use-context CONTEXT_NAME 
kubectl config view 
kubectl explain RESOURCE 
kubectl options 
kubectl plugin [flags] 
kubectl plugin list 
kubectl version 
