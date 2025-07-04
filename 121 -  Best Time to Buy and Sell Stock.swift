{\rtf1\ansi\ansicpg1252\cocoartf2818
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;\f1\fnil\fcharset0 Menlo-Bold;\f2\fnil\fcharset0 Menlo-Regular;
}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red252\green95\blue163;\red255\green255\blue255;
\red93\green216\blue255;\red65\green161\blue192;\red208\green191\blue105;}
{\*\expandedcolortbl;;\csgray\c0\c0;\cssrgb\c100000\c47843\c69804;\cssrgb\c100000\c100000\c100000\c85000;
\cssrgb\c41961\c87451\c100000;\cssrgb\c30588\c69020\c80000;\cssrgb\c85098\c78824\c48627;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx560\tx1120\tx1680\tx2240\tx2800\tx3360\tx3920\tx4480\tx5040\tx5600\tx6160\tx6720\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \cb2 \
\pard\tx791\pardeftab791\partightenfactor0

\f1\b\fs32 \cf3 class
\f2\b0 \cf4  \cf5 Solution\cf4 \{
\f0\fs24 \cf0 \

\f2\fs32 \cf4     
\f1\b \cf3 func
\f2\b0 \cf4  \cf6 maxProfit\cf4 ( \cf6 array\cf4  : [Int]) -> Int\{
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f1\b \cf3 var
\f2\b0 \cf4  buyingPrice = array[\cf7 0\cf4 ]
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f1\b \cf3 var
\f2\b0 \cf4  sellingPrice = \cf7 0
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f1\b \cf3 for
\f2\b0 \cf4  i 
\f1\b \cf3 in
\f2\b0 \cf4  array\{
\f0\fs24 \cf0 \

\f2\fs32 \cf4             
\f1\b \cf3 guard
\f2\b0 \cf4  i < buyingPrice 
\f1\b \cf3 else
\f2\b0 \cf4 \{
\f0\fs24 \cf0 \

\f2\fs32 \cf4                 sellingPrice =  max(sellingPrice, i - buyingPrice)
\f0\fs24 \cf0 \

\f2\fs32 \cf4                 
\f1\b \cf3 continue
\f0\b0\fs24 \cf0 \

\f2\fs32 \cf4             \}
\f0\fs24 \cf0 \

\f2\fs32 \cf4             buyingPrice = i
\f0\fs24 \cf0 \

\f2\fs32 \cf4         \}
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f0\fs24 \cf0 \

\f2\fs32 \cf4          
\f0\fs24 \cf0 \

\f2\fs32 \cf4         
\f1\b \cf3 return
\f2\b0 \cf4  sellingPrice
\f0\fs24 \cf0 \

\f2\fs32 \cf4     \}
\f0\fs24 \cf0 \

\f2\fs32 \cf4 \}
\f0\fs24 \cf0 \
\

\f1\b\fs32 \cf3 let
\f2\b0 \cf4  \cf6 solution\cf4  = Solution()
\f0\fs24 \cf0 \

\f2\fs32 \cf4 print(solution.maxProfit(array: [\cf7 7\cf4 ,\cf7 1\cf4 ,\cf7 1\cf4 ,\cf7 1\cf4 ,\cf7 5\cf4 ,\cf7 4\cf4 ,\cf7 8\cf4 ]))
\f0\fs24 \cf0 \
\
\
}