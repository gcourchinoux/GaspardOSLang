# GaspardOS LANG exemple


Voici des exemples du langage de programmation GaspardOS.

[Plus d'infos ici](https://courchinoux.org/LANG1.html)

[pour installer le compilo](https://courchinoux.org/LANG2.html)


# comment lancer

quand votre compilateur est installé, vous pouvez lancer l'exemple Karla.g par exemple.


Le fichier .g donnera *TOUJOURS* les commandes de compilations. 


Les fichiers *inc.g sont des fichiers d'entetes qu'il faut inclure toujours avant le fichier g principal. 

# comment invoquer des fonctions C ou Win32 ou une autre LIB ?

c'est très très simple : 

utilisez le système prototype d'une procedure : 

par exemple : 

time(uint64_t t) donne :
```
prototype procedure time return uint64_t = begin 


argument begin 

argument uint64_t time_ ;


end



end
```

Le plus dur n'est pas de créér le prototype, c'est de trouver la déclaration de fonction C dans les entetes du système la plus fidéle .... 

# problèmes :


Issues GITHUB ou mail si problème compilo :

contact@gaspardos.com

