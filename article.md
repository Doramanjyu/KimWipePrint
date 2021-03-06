---
title: キムワイプに同人誌を刷る２
subtitle: ～うおォン 俺はまるで人間輪転機だ～
author: どら饅頭
documentclass: scrartcl
classoption:
  - 9pt
  - a5paper
  - twocolumn
  - titlepage=true
geometry: margin=15mm, top=18mm, bottom=18mm
urlcolor: blue
indent: true
header-includes:
  - \usepackage{dblfloatfix}
  - \usepackage{graphicx}
  - \usepackage[headsepline,automark]{scrlayer-scrpage}
  - \KOMAoptions{headsepline=0.25pt:\textwidth}
  - \KOMAoptions{footsepline=0.25pt:\textwidth}
  - \pagestyle{scrheadings}
  - \ihead{}
  - \ohead{}
  - \chead{\pagemark}
  - \cfoot[]{}
  - \sectionmark{}
  - \usepackage{indentfirst}
  - \usepackage{afterpage}
  - \usepackage{float}
  - \usepackage{caption}
  - \renewcommand{\figurename}{図}
  - \captionsetup[figure]{labelfont={bf},labelformat={default},labelsep=period,name={\figurename}}
  - \setcounter{topnumber}{10}
  - \setcounter{bottomnumber}{10}
  - \setcounter{totalnumber}{10}
  - \setcounter{dbltopnumber}{10}
  - \renewcommand{\topfraction}{1.0}
  - \renewcommand{\bottomfraction}{0.9}
  - \renewcommand{\dbltopfraction}{1.0}
  - \renewcommand{\textfraction}{0.1}
  - \renewcommand{\floatpagefraction}{1.0}
  - \renewcommand{\dblfloatpagefraction}{1.0}
  - \setlength{\abovecaptionskip}{0.2em}
  - \setlength{\belowcaptionskip}{0.5em}
  - \usepackage{enumitem}
  - \setlist{leftmargin=3mm}
---

\thispagestyle{empty}
\onecolumn
\begin{figure}[t]
\vspace{10em}
\hfill\includegraphics[width=\linewidth]{images/cover.png}
\end{figure}
\clearpage
\twocolumn

# はじめに

キムワイプに印刷した同人誌、その実現には多くの試行錯誤と失敗がありました。

はじまりは、簡易なイラストを印刷したフリーペーパー(2014/11/23 COMITIA X-4 で配布、 **\figurename\ \ref{fig:first-wipe-print}**)でした。
これがいつの間にかエスカレートし、キムワイプの本体とキムタオルの表紙に、国内版と海外版のキムワイプの違いについて紹介する擬人化マンガを印刷したり[1]、今では複数種の紙ウエスにそれぞれの擬人化マンガを印刷した同人誌[2]を頒布する始末です。

\begin{figure}[b!]
\centering\includegraphics[width=\linewidth]{images/wipe.jpg}
\caption{はじめてのキムワイプ印刷 COMITIA X-4}
\label{fig:first-wipe-print}
\end{figure}

これまでに行ってきた、キムワイプをはじめとする紙ウエスへの同人誌印刷の経験の中では、湿度の低下によるインク粘度の変動や、紙ウエスの品種ごとに大幅に異なるにじみの特性に振り回されてきました。
本誌では、これからキムワイプへの印刷をはじめる同人作家の皆さまを主なターゲットとし、4年に渡る試行錯誤の結果として得られた知見をまとめます。

\begin{figure}[b!]
\vspace{-1em}
\hfill\includegraphics[width=\linewidth,trim={0 20em 0 0},clip]{images/illust1.png}
\vspace{-5em}
\end{figure}

\begin{figure*}[t]
\centering\includegraphics[width=\linewidth,trim={0 3em 0 3em},clip]{images/screen.jpg}
\caption{キムワイプ印刷に用いるスクリーン}
\label{fig:screen}
\end{figure*}

# 版をつくる

キムワイプのような薄い紙はローラーでの送りが難しいため、一般家庭で実現可能な印刷方式としては、孔版印刷の一種であるスクリーン印刷がおそらく唯一の答えとなります。
版を制作するための感光スクリーンとしては、**\figurename\ \ref{fig:screen}**に例を示す、太陽精機のTシャツくん ミドルスクリーンが容易に入手できます。
ただし、感光スクリーンは経時劣化が早く、製造から時間が立つと、現像不良を引き起こしやすくなる点に注意が必要です。

スクリーンの線数(網目の細かさ)は、後に説明するように、インクの粘性を高くする必要があるため、目詰まりの頻度を下げるため比較的粗い80から120線/インチ程度を使用するとよいでしょう。
一方、粗い目のスクリーンでは、細い線を再現できないため、原稿作成の際に考慮する必要があります。
Tシャツくんスクリーンの製品としては、線幅1 mm以上が推奨されていますが、概ね0.5 mm以上の線幅があれば、印刷が可能でした。

スクリーンを用いた製版には紫外線を用いた感光が必要ですが、感光時間の調整を行うために、ブラックライトのような一定強度の紫外線を照射できる機材を用意するとよいでしょう。
例えば、高さ200 mmに10 Wの蛍光ランプFL10BLBを2本設置して、80 g/m$^{2}$ の普通紙にレーザープリントしたものを原版とし、厚さ2 mmのPET板でおさえた場合、露光時間35分が適正でした。
なお、ガラスやアクリルは紫外線をほとんど吸収するため、版の押さえにはPET樹脂のような紫外線透過率の高いものを用います。

原版と感光スクリーンの間に隙間があると、像がボケて感光過多になるため、スプレーのり等でよく接着してから露光を開始します。
このスプレーのりは、現像の際に水につければ、容易に剥離します。

現像の際は、版をこすらずに、シャワーの水圧のみで未露光部分を除去することで、細い線も含めて再現性の高い製版が可能です。
このとき、孔部分がきちんと抜けていることをよく確認しましょう。
現像後は、再び紫外線を照射し、完全に硬化させることで版の耐久性を高めます。


# ねるねる

\begin{figure}[b!]
\centering\includegraphics[width=\linewidth,trim={2em 0 2em 0}]{images/ink.jpg}
\caption{インクの粘度調整}
\label{fig:ink}
\end{figure}

紙ウエスのほんシリーズでは、印刷後の耐久性と作業性を考慮して、水性顔料インクを使用しています。
水性顔料インクは、一度乾燥すると耐水性をもち、水に溶けなくなるため、印刷作業中は決して乾燥させてはいけません。
インクの量が少ないと、体積に対して表面積が大きくなり、乾燥しやすくなるのに加え、水の量がよりシビアになるため、ある程度の量をまとめて調整すると作業効率が向上します。

インクの粘度調整は、**\figurename\ \ref{fig:ink}**  のように、インクに水を足して、練り合わせることで行います。
もともとの粘度が比較的高いため、均一に混合するためには、練りながら少量ずつ水を加える必要があります。

また、作業を中断する際には、濡れ布巾とともにビニール袋に入れておくことで、乾燥を防ぐとよいでしょう。

\begin{figure*}[b!]
\centering\includegraphics[width=\linewidth]{images/comparizon.pdf}
\caption{紙質、インク粘性と印刷品質}
\label{fig:paper-ink-quality}
\end{figure*}


# 紙とインクと印刷品質

紙ウエスへの印刷の品質は、紙質とインクに強く依存します。
紙が薄く、表面の凹凸が大きいほど、にじみやインクの広がりが大きくなるため、インクの粘性を上げて対処します。
しかし、インクの粘性を高くすると、インクがすぐに乾燥するため、スクリーンの目の詰まりが発生しやすく、またスキージで版の上にインクを滑らせて転写する際の作業性が低下してしまいます。

**\figurename\ \ref{fig:paper-ink-quality}** に、紙種とインクの粘性に対するスクリーン印刷の結果の変化を示します。
インク濃いめの例では、全紙種に対してにじみが少ない印刷結果が得られていますが、数枚の印刷で目詰まりを起こしており、現実的には利用できません。
インク薄めの例では、JKワイパーとワイプオールで特ににじみが大きく、キムワイプも網点が潰れていることが確認できます。
JKワイパーとワイプオールは、表面にエンボス加工・クレープ加工があることで、版と紙が完全に密着しないことがにじみの一因と考えられます。
一方でブルーロールとP2は、インクの粘性によらずに高い品質で印刷ができており、紙ウエストしての給水性能の高さが伺い知れます。

この結果からもわかるとおり、紙ウエスへの印刷は、紙種毎にインクの粘性の調整が必須となります。
しかしながら、インクの粘性は水分の蒸発により急速に変化しますので、これが紙ウエスへの印刷における、最大の問題となります。


# 季節は流れて

紙ウエスのほん2 [2]は、2018年8月に初版、2018年12月に第2版を発行しましたが、2版の印刷品質が若干悪化するトラブルが発生しました。

8月は湿度が高い中、更に加湿器を使用して100パーセントに近い湿度を維持した状態で印刷作業を行えるため、インクの粘性の変化を最小限に抑えることができます。
一方の12月は、気温が低く、暖房を使用しないと手先の作業性に問題があるため、加湿器、シャワー、やかん等を用いて湿度を高めながら作業を行いました。
ところが、冬の乾燥した空気に対して加湿が追いつかず、10分程度で明らかにインクの粘性が変化する状態での印刷作業を余儀なくされ、印刷のかすれ等が多数発生しています。

より高品質な印刷を、時期によらずに実現するためには湿度の制御が必要になり、大型の加湿器を利用したり、浴室で作業を行うといった対策が効果的と考えられます。


\newpage

# キムワイプ印刷を極める

4年かけてもなお、キムワイプ印刷には課題や改善すべき点が多数残っています。
現状の主要な問題点と、考えられる対策を以下にまとめます。

- 製版の品質
  - 感光スクリーンの経時劣化等により適正露光時間が変化
    - できるだけ新鮮なスクリーンを利用
  - 周辺部を十分に露光させると細い線が一部過剰に感光
    - 普通紙よりも透過率が高く表面がなめらかでよく密着する原版を使用
    - 感光時の線細りを考慮して原版を調整
- 印刷時のインク粘性
  - 湿度の低い時期に印刷品質が悪化
    - 冬季でも湿度100%近くを維持できるように強力に加湿
    - 冬季の刊行を控える

\begin{figure}[b!]
\vspace{-1em}
\hfill\includegraphics[width=\linewidth]{images/illust2.png}
\vspace{-5em}
\end{figure}


\clearpage
# おわりに

本誌では、キムワイプをはじめとする紙ウエスに同人誌を印刷するために必要な知見をまとめました。
これらが、これからキムワイプへの印刷をはじめる方の参考になれば幸いです。


\newpage

# 参考文献

\begin{itemize}
\setlength\itemsep{-0.2em}
\item[] [1] どら饅頭屋, ``紙ウエスのほん'', 2017/4 \hfill
\includegraphics[width=\linewidth]{images/kamiuesu1.jpg}
\item[] [2] どら饅頭屋, ``紙ウエスのほん2'', 2018/8 \hfill
\includegraphics[width=\linewidth]{images/kamiuesu2.jpg}
\end{itemize}



\onecolumn
\clearpage

\begin{table}[h]
\vspace{30em}
\centering
\begin{tabular}{c}
\LARGE\bf キムワイプに同人誌を刷る２ \\
\Large ～うおォン 俺はまるで人間輪転機だ～ \\
\hline \\
\large どら饅頭屋 \\
\small http://doramanjyu.com/ \\
\small twitter: @doramanjyu \\
\\
\bf 初版発行 \\
2018年12月31日 コミックマーケット95 \\
\\
\bf 発行人 \\
どら饅頭
\end{tabular}
\end{table}

\vspace{10em}
\begin{minipage}{0.2\linewidth}
\includegraphics[width=\linewidth]{images/cc-by-sa.pdf}
\end{minipage}
\begin{minipage}{0.75\linewidth}
この同人誌は クリエイティブ・コモンズ 表示-継承 3.0 非移植 ライセンスの下に提供されています。
\end{minipage}
\hfill
