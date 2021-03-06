# the show method:
setMethod('show', 'SangerRead', function(object){
    if (object@inputSource == "ABIF") {
        primaryDNA <- as.character(object@primarySeq)
        secondaryDNA <- as.character(object@secondarySeq)
        trimmedStartPos <- object@QualityReport@trimmedStartPos
        trimmedFinishPos <- object@QualityReport@trimmedFinishPos
        primaryDNA <- substr(primaryDNA, trimmedStartPos+1, trimmedFinishPos)
        secondaryDNA <- substr(secondaryDNA, trimmedStartPos+1,trimmedFinishPos)
        cat("SangerRead S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "          Read Feature : ", object@readFeature, "\n",
            "         Read FileName : ", basename(object@readFileName), "\n",
            "    Trimming Method SR : ", object@QualityReport@TrimmingMethod, "\n",
            "      Primary Sequence : ", primaryDNA, "\n",
            "    Secondary Sequence : ", secondaryDNA, "\n"
        )
    } else if (object@inputSource == "FASTA") {
        cat("SangerRead S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "          Read Feature : ", object@readFeature, "\n",
            "         Read FileName : ", basename(object@readFileName), "\n",
            "       Fasta Read Name : ", object@fastaReadName, "\n",
            "      Primary Sequence : ", as.character(object@primarySeq), "\n"
        )
    }
})

setMethod('show', 'SangerContig', function(object){
    if (object@inputSource == "ABIF") {
        cat("SangerContig S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "      Parent Directory : ", object@parentDirectory, "\n",
            "           Contig Name : ", object@contigName, "\n",
            " Suffix Forward RegExp : ", object@suffixForwardRegExp, "\n",
            " Suffix Reverse RegExp : ", object@suffixReverseRegExp, "\n",
            "    Trimming Method SC : ", object@trimmingMethodSC, "\n",
            "         'minReadsNum' : ", object@minReadsNum, "\n",
            "       'minReadLength' : ", object@minReadLength, "\n",
            "     'minFractionCall' : ", object@minFractionCall, "\n",
            "     'maxFractionLost' : ", object@maxFractionLost, "\n",
            "    'acceptStopCodons' : ", object@acceptStopCodons, "\n",
            "        'readingFrame' : ", object@readingFrame, "\n",
            "       Contig Sequence : ", as.character(object@contigSeq), "\n"
        )
    } else if (object@inputSource == "FASTA") {
        cat("SangerContig S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "       Fasta File Name : ", object@fastaFileName, "\n",
            "  Names Conversion CSV : ", object@namesConversionCSV, "\n",
            "           Contig Name : ", object@contigName, "\n",
            " Suffix Forward RegExp : ", object@suffixForwardRegExp, "\n",
            " Suffix Reverse RegExp : ", object@suffixReverseRegExp, "\n",
            "         'minReadsNum' : ", object@minReadsNum, "\n",
            "       'minReadLength' : ", object@minReadLength, "\n",
            "     'minFractionCall' : ", object@minFractionCall, "\n",
            "     'maxFractionLost' : ", object@maxFractionLost, "\n",
            "    'acceptStopCodons' : ", object@acceptStopCodons, "\n",
            "        'readingFrame' : ", object@readingFrame, "\n",
            "       Contig Sequence : ", as.character(object@contigSeq), "\n"
        )
    }
})

setMethod('show', 'SangerAlignment', function(object){
    if (object@inputSource == "ABIF") {
        cat("SangerAlignment S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "      Parent Directory : ", object@parentDirectory, "\n",
            " Suffix Forward RegExp : ", object@suffixForwardRegExp, "\n",
            " Suffix Reverse RegExp : ", object@suffixReverseRegExp, "\n",
            "    Trimming Method SA : ", object@trimmingMethodSA, "\n",
            "   'minFractionCallSA' : ", object@minFractionCallSA, "\n",
            "   'maxFractionLostSA' : ", object@maxFractionLostSA, "\n",
            "     Contigs Consensus : ", as.character(object@contigsConsensus), "\n"
        )
    } else if (object@inputSource == "FASTA") {
        cat("SangerAlignment S4 instance\n",
            "          Input Source : ", object@inputSource, "\n",
            "       Fasta File Name : ", object@fastaFileName, "\n",
            "  Names Conversion CSV : ", object@namesConversionCSV, "\n",
            " Suffix Forward RegExp : ", object@suffixForwardRegExp, "\n",
            " Suffix Reverse RegExp : ", object@suffixReverseRegExp, "\n",
            "   'minFractionCallSA' : ", object@minFractionCallSA, "\n",
            "   'maxFractionLostSA' : ", object@maxFractionLostSA, "\n",
            "     Contigs Consensus : ", as.character(object@contigsConsensus), "\n"
        )
    }
})
