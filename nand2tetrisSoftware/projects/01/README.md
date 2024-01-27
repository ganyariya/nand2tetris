
# 01

どのようなブール関数であっても `正準表現` (AND, OR, NOT のみ) で書き表せる。
そのため、 AND ゲート, OR ゲート, NOT ゲートさえ用意すれば、必ずすべての論理式を表現できる。

ここで、 AND, OR, NOT は `NAND` ゲートから構成できる。

- [And.hdl](./And.hdl)
- [Or.hdl](./Or.hdl)
- [Not.hdl](./Not.hdl)

そのため、すべてのブール関数は NAND ゲートのみで構成できる。
正準表現を構築してから、 AND, OR, NOT をすべて NAND ゲートに置き換えればよいからである。

## NAND ゲートの実装

トランジスタで NAND ゲートが作れるらしい

https://www.youtube.com/watch?v=dOs88Fgrb8c
https://www.youtube.com/watch?v=wf3SpvzDnj4
https://www.youtube.com/watch?v=J37d8PYF4S8
https://meyon.gonna.jp/study/electronic/609/
http://okgnz.web.fc2.com/plybd/plybd13.htm
https://toragi.cqpub.co.jp/Portals/0/backnumber/2004/09/p129-130.pdf
