# TS345

## Ce dépôt
Une fois le dépôt cloné, faire :
```bash
git submodule update --init --recursive
```
Dans MATLAB, compiler les sources nécessaires à ce projet avec 
```matlab
>> make
```
Lancer la simulation avec 
```matlab
>> main
```


## Le cours
Vous trouverez les transparents du cours sur les codes LDPC sur le lien [suivant](https://rtajan.github.io/assets/cours/TS345/slides/TS345_LDPC.pdf).

## Le TP
Le sujet de travaux pratiques est disponible [ici](https://rtajan.github.io/assets/cours/TS345/TP/TP_TS345.pdf). Afin de faciliter votre travail de test, vous trouverez, ci-après, des courbes de performances pour les codes donnés dans les fichiers ```DEBUG_6_3.alist```, ```CCSDS_64_128.alist``` et ```MAC_KAY_504_1008.alist```.

Les résultats pour le code ```DEBUG_6_3.alist``` et un nombre d'itérations de BP allant de 1 à 50 :
![Courbes de BER FER](https://rtajan.github.io/assets/img/DEBUG_6_3.png)

Les résultats pour le code ```CCSDS_64_128.alist``` et un nombre d'itérations de BP allant de 1 à 50 :
![Courbes de BER FER](https://rtajan.github.io/assets/img/CCSDS_64_128.png)

 Les résultats pour le code ```MAC_KAY_504_1008.alist``` et un nombre d'itérations de BP de 50 et 100 :
![Courbes de BER FER](https://rtajan.github.io/assets/img/MAC_KAY_504_1008.png)

Certaines de ces courbes peuvent être générées [ici](https://aff3ct.github.io/comparator.html). Si vous le souhaitez, vous pouvez télécharger aff3ct sur le lien [suivant](https://aff3ct.github.io/download.html) et refaire les simulations.
