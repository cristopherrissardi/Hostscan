# 🛰️ HOSTSCAN 

Ferramenta para fazer a verificação de hosts ativos na rede.

![[Pasted image 20240728013142.png]]

Script básico para fazer a verificação de hosts ativos na rede com base na verificação de um `ping` para medir respostas e retornar com a mensagem baseada no protocolo `ICMP`.

É um script bem simples, porém bem útil quando necessário escanear alvos em apenas uma resposta ICMP... ele pode ser ajustado facilmente editando o código shell.

Como o script em questão utiliza o protocolo `ICMP` para verificar os hosts ativos, pode haver falsos positivos, principalmente em sistemas Windows, o qual muitas vezes deixa desabilitado por padrão o envio de resposta ICMP para outros hosts ativos na rede, então atente-se nesse quesito... 

## ✔️ Requisitos

Apenas ter um dispositivo Linux. Nada específico.

## ⛏️ Como usar

1. Clone este repositório usando a ferramenta do git ou baixe o repositório em ZIP
```bash
git clone https://github.com/cristopherrissardi/Hostscan.git
```

2. Entre na pasta do repositório clonado
```bash
cd Hostscan
```

3. De permissão de execução ao script usando o Linux
```bash
sudo chmod +x ./hostscan
```

4. Execute o script passando o range de IP interno de sua rede
```bash
./hostscan 192.168.0.
```

Observação: não precisa passar o último dígito do IP, deixe em branco que a ferramenta completa e faz a verificação


Quando o host for encontrado, será retornado da seguinte forma:

```bash.
192.168.0.1 <<-------------- Host Encontrado!
192.168.0.11 <<-------------- Host Encontrado!
192.168.0.26 <<-------------- Host Encontrado!
.
.
.
```

Quando o host não for encontrado, simplesmente não será retornado!

---

## 💬 Observações

1. O script retorna apenas os hosts ativos.
2. A varredura pode demorar bastante pois verifica todos os IPs possíveis dentro do determinado range de um gateway.
3. Ainda que não seja comum, pode haver falhas!

---
## 👁️‍🗨️ Observações finais

Caso queira criar um script próprio, fique a vontade para modificar, criar, estudar ou qualquer outro fator!