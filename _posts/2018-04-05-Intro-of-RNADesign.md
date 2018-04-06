---
title: "RNA Design"
author: "htyao"
date: "April 4, 2018"
mathjax: true
---

寫於一切之前, 此文章內容主要基於2017年發表在 _Briefings in Bioinformatics_ 的 RNA Design review [@Churkin2017]

> The class of ill-posed problems includes many classical mathematical problems and, most significantly, that such problems have important applications. 
> -- Andrey Nikolayevich Tikhonov

就如同多數的逆問題, 逆RNA折疊 (inverse RNA folding, or RNA Design) 並不符合[適定性問題](https://zh.wikipedia.org/zh-tw/%E9%81%A9%E5%AE%9A%E6%80%A7%E5%95%8F%E9%A1%8C)的定義,也因此充滿挑戰性。給定一條RNA序列,找到其最低能量二維折疊複雜度是 $O(n^3)$,反過來卻不是如此簡單,給定一個RNA二維結構,我們想要設計一條RNA序列,使得其最低能量折疊符合給定的結構。一個直覺又暴力的方法是找出所有可能序列的折疊,期待其中一個符合我們想要的，假設要設計一條長度$n$的RNA序列,每個位置都有四種可能(A,U,C,G),也就是說總共有$4^n$條可能序列。當然考慮到成對的鹼基,我們可以近一步的減少這個數量,假設其中有m ($2m\leq n$)個鹼基對 (A-U, C-G, U-G),可惜的是還剩下$6^m4^{n-2m}$條可能的RNA序列。很顯然,在目前的技術之下,暴力解不是一個可行的方法。
