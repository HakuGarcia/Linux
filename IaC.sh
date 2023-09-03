!/bin/bash

#Directory
mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

#Groups
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

#Users
#Users adm
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt senha1234)

#Users ven
useradd debora -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt senha1234)

#Users sec
useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt senha1234)
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt senha1234)

#Add users to groups
#Users adm
usermod -G GRP_ADM carlos
usermod -G GRP_ADM maria
usermod -G GRP_ADM joao

#Users ven
usermod -G GRP_VEN debora
usermod -G GRP_VEN sebastiana
usermod -G GRP_VEN roberto

#Users sec
usermod -G GRP_SEC josefina
usermod -G GRP_SEC amanda
usermod -G GRP_SEC rogerio

#Directory owner
chown root: GRP_ADM /adm
chown root: GRP_VEN /ven
chown root: GRP_SEC /sec

#Directory permission
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico