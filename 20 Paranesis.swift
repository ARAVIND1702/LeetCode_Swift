{\rtf1\ansi\ansicpg1252\cocoartf2818
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fnil\fcharset0 Menlo-Regular;}
{\colortbl;\red255\green255\blue255;\red70\green137\blue204;\red30\green30\blue30;}
{\*\expandedcolortbl;;\cssrgb\c33725\c61176\c83922;\cssrgb\c15686\c15686\c15686;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\partightenfactor0

\f0\fs26 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 class Solution \{\
    func isValid_0ms(_ s : String) -> Bool\{\
        var queue : Array<Character> = []\
        let closingParenthesis: Array<Character> = [")","]","\}"]\
        for char in s\{\
            guard !closingParenthesis.contains(char) else\{         if queue.isEmpty \{\
                return false\
            \}\
                switch char \{\
                case ")":\
                    if "(" != queue.removeLast()\{\
                        return false\
                    \}\
                case "]":\
                    if "[" != queue.removeLast()\{\
                        return false\
                    \}\
                    \
                case "\}":\
                    if "\{" != queue.removeLast()\{\
                        return false\
                    \}\
                    \
                    \
                default:\
                    return false\
                \}\
                continue\
            \}\
            queue.append(char)\
            \
        \}\
        \
        return queue.isEmpty\
    \}\
    \
    func isValid_1ms(_ s: String) -> Bool \{\
        var queue : [Character] = []\
        \
        for i in s\{\
            if( i == "(" ||  i == "\{" || i == "[")\{\
                queue.append(i)\
            \}\
            else if( i == ")")\{\
                if(queue.last == "(")\{\
                    queue.removeLast()\
                \}\
                else\{\
                    queue.append(i)\
                \}\
            \}\
            else if( i == "\}")\{\
                if(queue.last == "\{")\{\
                    queue.removeLast()\
                \}\
                else\{\
                    queue.append(i)\
                \}\
            \}\
            else if( i == "]")\{\
                if(queue.last == "[")\{\
                    queue.removeLast()\
                \}\
                else\{\
                    queue.append(i)\
                \}\
            \}\
        \}\
        \
        \
        return queue.isEmpty\
        \
    \}\
\}\
\
var solution = Solution()\
\
print(solution.isValid("]"))}