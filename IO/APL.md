## APL

### Escrita em console

Dentre as diferentes formas de se escrever na saída padrão, APL disponibiliza o símbolo _Quad_ (`⎕`) e a função de sistema _Write Text File_ (`⎕NPUT`).

#### Símbolo `⎕`

É possível escrever na saída padrão atribuindo (por meio do símbolo `←`) uma string ao símbolo `⎕`. O tradicional `Hello, World!` pode ser implementado da seguinte maneira:

```apl
⎕←'Hello, World!'
```

Há, porém, duas características importante a ser destacada. A primeira é que a saída produzida pelo símbolo `⎕` termina com `\r` (`0x0D`), e não com `\n` (`Ox0A`), que é o terminador de linha usando com maior frequência em juízes online, de modo que o código acima pode receber o veredito `PE` (_Presentation Error_). A segunda característica importante é que há uma limitação do número máximo de caracteres que podem ser impressos na saída padrão por meio do símbolo `⎕`: a partir deste limite, a saída fica truncada, o que pode levar a um veredito `WA` (_Wrong Answer_) quando a saída superior este limite.

Ambas situações podem ser evitadas usando a função de sistema `⎕NPUT`).

#### Função `⎕NPUT`
