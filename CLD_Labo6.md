# Titre du laboratoire  : KUBERNETES

> Auteurs : Chris Barros, Jérôme Arn

# TASK 1 - DEPLOY THE APPLICATION ON A LOCAL TEST CLUSTER

> Document any difficulties  you faced and how you overcame them. Copy the object descriptions into the lab report.

Nous avons rencontré les problèmes suivant:

- ```sh
  # En voulant étendre le port du frontend sur le port 8001 avec la commande ci-dessous, nous avons remarqué que la page n'était pas joignable.
  kubectl port-forward pod/frontend 8080:8001
  # en changeant pour 
  kubectl port-forward pod/frontend 8080:8080
  # nous avons pu accéder à la page 
  ```

- La deuxième erreur que nous avons faites viens de la connexion entre le frontend et l'api. Nous avions mis la variable d'environnement à **api-svc:8081** au lieu de **http://api-svc:8081**.

les copies des objets sont dans un fichier appart tel que **frontend-object.txt** et **api-svc-object.txt**.

# TASK 2 - DEPLOY THE APPLICATION IN KUBERNETES ENGINE

## SUBTASK 2.1 - CREATE PROJECT

## SUBTASK 2.2 - CREATE A CLUSTER

## SUBTASK 2.3 - DEPLOY THE APPLICATION ON THE CLUSTER

## SUBTASK 2.4 - DEPLOY THE TODO-FRONTEND SERVICE

DELIVERABLES
Document any difficulties you faced and how you overcame them. Copy the object descriptions into the lab report (if they are unchanged from the previous task just say so).

Take a screenshot of the cluster details from the GKE console. Copy the output of the kubectl describe command to describe your load balancer once completely initialized.

# TASK 3 - ADD AND EXERCISE RESILIENCE

## SUBTASK 3.1 - ADD DEPLOYMENTS

## SUBTASK 3.2 - VERIFY THE FUNCTIONALITY OF THE REPLICA SETS

## SUBTASK 3.3 (OPTIONAL) - PUT AUTOSCALING IN PLACE AND LOAD-TEST IT


DELIVERABLES
Document your observations in the lab report. Document any difficulties you faced and how you overcame them. Copy the object descriptions into the lab report.