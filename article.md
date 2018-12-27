---
title: うおォン 俺はまるで人間輪転機だ
subtitle: 〜キムワイプ印刷の紙とインク〜
author: どら饅頭
documentclass: scrartcl
classoption:
  - 8pt
  - a5paper
  - onecolumn
geometry: margin=15mm
urlcolor: blue
indent: true
header-includes:
  - \usepackage{multicol}
  - \usepackage{indentfirst}
  - \newcommand{\hideFromPandoc}[1]{#1}
  - \hideFromPandoc{
      \let\Begin\begin
      \let\End\end
      \let\Newpage\newpage
    }
  - \usepackage{caption}
  - \renewcommand{\figurename}{図}
  - \captionsetup[figure]{labelfont={bf},labelformat={default},labelsep=period,name={\figurename}}
---

\Begin{multicols}{2}

# はじめに

キムワイプに印刷する芸を始めたのはいつの頃だっただろう。
はじめは、簡易なイラストを印刷したフリーペーパーだけであったが、いつの間にやらエスカレートし、今では複数種の紙ウエスにマンガを印刷した同人誌の発行に至った。

これは、紙ウエスへの高品質な印刷を目指して奮闘した、ひとりの同人作家の汗と涙の軌跡である。


# キムワイプにイラストを刷る

キムワイプのような薄い紙は、ロール紙でもなければ、ローラーでの送りが難しいため、孔版印刷の一種であるスクリーン印刷が適しています。


# 紙とインクと印刷品質

紙ウエスへの印刷の品質は、紙質とインクに強く依存します。
特にインクは、水分の蒸発により粘性が変化するため、管理が手間になります。
**\figurename\ \ref{fig:paper-ink-quality}** に、紙種とインク濃度に対するスクリーン印刷の結果を示します。

\End{multicols}

![紙質、インク濃度と印刷品質\label{fig:paper-ink-quality}](images/image.png){width=100%}


\Newpage
\Begin{multicols}{2}

# 紙質

緻密なほどいい。
粗いと厚さ方向にしみこまずに、横に広がる。
クレープ加工も。


# インク濃度

にじみにくさと詰まりやすさのトレードオフ。
湿度の違いによる難しさ。

\End{multicols}
