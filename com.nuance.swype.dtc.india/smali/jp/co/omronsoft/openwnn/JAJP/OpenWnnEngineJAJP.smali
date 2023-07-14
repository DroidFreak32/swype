.class public Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;
.super Ljava/lang/Object;
.source "OpenWnnEngineJAJP.java"

# interfaces
.implements Ljp/co/omronsoft/openwnn/WnnEngine;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$WnnWordComparator;
    }
.end annotation


# static fields
.field public static final DIC_LANG_EN:I = 0x1

.field public static final DIC_LANG_EN_EMAIL_ADDRESS:I = 0x5

.field public static final DIC_LANG_INIT:I = 0x0

.field public static final DIC_LANG_JP:I = 0x0

.field public static final DIC_LANG_JP_EISUKANA:I = 0x4

.field public static final DIC_LANG_JP_PERSON_NAME:I = 0x2

.field public static final DIC_LANG_JP_POSTAL_ADDRESS:I = 0x6

.field public static final DIC_USERDIC:I = 0x3

.field public static final FREQ_LEARN:I = 0x258

.field public static final FREQ_USER:I = 0x1f4

.field public static final KEYBOARD_KEYPAD12:I = 0x1

.field public static final KEYBOARD_QWERTY:I = 0x2

.field public static final KEYBOARD_UNDEF:I = 0x0

.field public static final MAX_OUTPUT_LENGTH:I = 0x32


# instance fields
.field private mCandTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljp/co/omronsoft/openwnn/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

.field private mConvResult:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljp/co/omronsoft/openwnn/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mConvertSentence:Ljp/co/omronsoft/openwnn/WnnSentence;

.field private mDictType:I

.field private mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

.field private mExactMatchMode:Z

.field private mFilter:Ljp/co/omronsoft/openwnn/CandidateFilter;

.field private mGetCandidateFrom:I

.field private mInputHiragana:Ljava/lang/String;

.field private mInputRomaji:Ljava/lang/String;

.field private mKanaConverter:Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;

.field private mKeyboardType:I

.field private mOutputNum:I

.field private mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

.field private mSingleClauseMode:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "libpath"    # Ljava/lang/String;
    .param p2, "syspath"    # Ljava/lang/String;
    .param p3, "dicpath"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictType:I

    .line 63
    iput v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKeyboardType:I

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mFilter:Ljp/co/omronsoft/openwnn/CandidateFilter;

    .line 141
    new-instance v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;

    invoke-direct {v0, p1, p3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    .line 143
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;

    invoke-direct {v0, p2, p3}, Ljp/co/omronsoft/openwnn/OpenWnnDictionaryImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    .line 148
    :cond_0
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearDictionary()I

    .line 149
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearApproxPattern()V

    .line 150
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mCandTable:Ljava/util/HashMap;

    .line 157
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    .line 158
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKanaConverter:Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;

    .line 159
    return-void
.end method

.method private addCandidate(Ljp/co/omronsoft/openwnn/WnnWord;)Z
    .locals 3
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/4 v0, 0x0

    .line 272
    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mCandTable:Ljava/util/HashMap;

    iget-object v2, p1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    .line 273
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x32

    if-le v1, v2, :cond_1

    .line 281
    :cond_0
    :goto_0
    return v0

    .line 276
    :cond_1
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mFilter:Ljp/co/omronsoft/openwnn/CandidateFilter;

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mFilter:Ljp/co/omronsoft/openwnn/CandidateFilter;

    invoke-virtual {v1, p1}, Ljp/co/omronsoft/openwnn/CandidateFilter;->isAllowed(Ljp/co/omronsoft/openwnn/WnnWord;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 279
    :cond_2
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mCandTable:Ljava/util/HashMap;

    iget-object v1, p1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private clearCandidates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 288
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 289
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mCandTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 290
    iput v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mOutputNum:I

    .line 291
    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 292
    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputRomaji:Ljava/lang/String;

    .line 293
    iput v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    .line 294
    iput-boolean v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mSingleClauseMode:Z

    .line 295
    return-void
.end method

.method private getCandidate(I)Ljp/co/omronsoft/openwnn/WnnWord;
    .locals 7
    .param p1, "index"    # I

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 206
    iget v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    if-nez v3, :cond_0

    .line 207
    iget v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_1

    .line 209
    iput v6, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    .line 231
    :cond_0
    :goto_0
    iget v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    if-ne v3, v5, :cond_6

    .line 232
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->convert(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 233
    .local v0, "convResult":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz v0, :cond_5

    .line 234
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 235
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v3}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->addCandidate(Ljp/co/omronsoft/openwnn/WnnWord;)Z

    goto :goto_1

    .line 210
    .end local v0    # "convResult":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    iget-boolean v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mSingleClauseMode:Z

    if-eqz v3, :cond_4

    .line 215
    iput v5, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    goto :goto_0

    .line 223
    .local v2, "word":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_2
    iget-boolean v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mExactMatchMode:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    iget-object v4, v2, Ljp/co/omronsoft/openwnn/WnnWord;->stroke:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 224
    :cond_3
    invoke-direct {p0, v2}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->addCandidate(Ljp/co/omronsoft/openwnn/WnnWord;)Z

    .line 218
    .end local v2    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_4
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 219
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v3}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getNextWord()Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .restart local v2    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    if-nez v2, :cond_2

    .line 220
    iput v5, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    goto :goto_0

    .line 239
    .end local v2    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    .restart local v0    # "convResult":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_5
    iput v6, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    .line 243
    .end local v0    # "convResult":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_6
    iget v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    if-ne v3, v6, :cond_8

    .line 244
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKanaConverter:Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;

    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputRomaji:Ljava/lang/String;

    iget v6, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKeyboardType:I

    invoke-virtual {v3, v4, v5, v6}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createPseudoCandidateList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v3

    .line 247
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 248
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnWord;>;"
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 249
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v3}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->addCandidate(Ljp/co/omronsoft/openwnn/WnnWord;)Z

    goto :goto_2

    .line 252
    :cond_7
    const/4 v3, 0x3

    iput v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mGetCandidateFrom:I

    .line 255
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnWord;>;"
    :cond_8
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt p1, v3, :cond_9

    .line 256
    const/4 v3, 0x0

    .line 258
    :goto_3
    return-object v3

    :cond_9
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvResult:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/WnnWord;

    goto :goto_3
.end method

.method private setDictionaryForPrediction(I)V
    .locals 8
    .param p1, "strlen"    # I

    .prologue
    const/4 v7, -0x2

    const/4 v6, 0x2

    const/16 v5, 0x258

    const/16 v4, 0xf5

    const/16 v3, 0x64

    .line 168
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    .line 170
    .local v0, "dict":Ljp/co/omronsoft/openwnn/WnnDictionary;
    invoke-interface {v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearDictionary()I

    .line 172
    iget v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictType:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    .line 173
    invoke-interface {v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearApproxPattern()V

    .line 174
    if-nez p1, :cond_1

    .line 175
    invoke-interface {v0, v6, v4, v4}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 176
    const/4 v1, 0x3

    const/16 v2, 0xf4

    invoke-interface {v0, v1, v3, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 178
    invoke-interface {v0, v7, v5, v5}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 194
    :cond_0
    :goto_0
    return-void

    .line 180
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x190

    invoke-interface {v0, v1, v3, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 181
    const/4 v1, 0x1

    if-le p1, v1, :cond_2

    .line 182
    const/4 v1, 0x1

    const/16 v2, 0x190

    invoke-interface {v0, v1, v3, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 184
    :cond_2
    invoke-interface {v0, v6, v4, v4}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 185
    const/4 v1, 0x3

    const/16 v2, 0xf4

    invoke-interface {v0, v1, v3, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 187
    const/4 v1, -0x1

    const/16 v2, 0x1f4

    const/16 v3, 0x1f4

    invoke-interface {v0, v1, v2, v3}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 188
    invoke-interface {v0, v7, v5, v5}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setDictionary(III)I

    .line 189
    iget v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKeyboardType:I

    if-eq v1, v6, :cond_0

    .line 190
    const/4 v1, 0x4

    invoke-interface {v0, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setApproxPattern(I)I

    goto :goto_0
.end method

.method private setSearchKey(Ljp/co/omronsoft/openwnn/ComposingText;I)I
    .locals 4
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;
    .param p2, "maxLen"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 320
    invoke-virtual {p1, v3}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, "input":Ljava/lang/String;
    if-ltz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-gt p2, v2, :cond_0

    .line 322
    invoke-virtual {v0, v1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 323
    iput-boolean v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mExactMatchMode:Z

    .line 328
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 329
    const-string/jumbo v2, ""

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 330
    const-string/jumbo v2, ""

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputRomaji:Ljava/lang/String;

    .line 337
    :goto_1
    return v1

    .line 325
    :cond_0
    iput-boolean v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mExactMatchMode:Z

    goto :goto_0

    .line 334
    :cond_1
    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 335
    invoke-virtual {p1, v1}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputRomaji:Ljava/lang/String;

    .line 337
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public addWord(Ljp/co/omronsoft/openwnn/WnnWord;)I
    .locals 3
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/4 v2, 0x0

    .line 572
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 573
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0, p1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->addWordToUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I

    .line 574
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 575
    return v2
.end method

.method public breakSequence()V
    .locals 0

    .prologue
    .line 592
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearPreviousWord()V

    .line 593
    return-void
.end method

.method public clearPreviousWord()V
    .locals 1

    .prologue
    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    .line 345
    return-void
.end method

.method public close()V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public convert(Ljp/co/omronsoft/openwnn/ComposingText;)I
    .locals 16
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;

    .prologue
    .line 455
    invoke-direct/range {p0 .. p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 457
    if-nez p1, :cond_0

    .line 458
    const/4 v13, 0x0

    .line 508
    :goto_0
    return v13

    .line 461
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v14, 0x1

    invoke-interface {v13, v14}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 463
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljp/co/omronsoft/openwnn/ComposingText;->getCursor(I)I

    move-result v2

    .line 465
    .local v2, "cursor":I
    const/4 v3, 0x0

    .line 466
    .local v3, "head":Ljp/co/omronsoft/openwnn/WnnClause;
    if-lez v2, :cond_3

    .line 468
    const/4 v13, 0x1

    const/4 v14, 0x0

    add-int/lit8 v15, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14, v15}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v6

    .line 469
    .local v6, "input":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    invoke-virtual {v13, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->convert(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 470
    .local v4, "headCandidates":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    if-eqz v4, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_2

    .line 471
    :cond_1
    const/4 v13, 0x0

    goto :goto_0

    .line 473
    :cond_2
    new-instance v3, Ljp/co/omronsoft/openwnn/WnnClause;

    .end local v3    # "head":Ljp/co/omronsoft/openwnn/WnnClause;
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {v3, v6, v13}, Ljp/co/omronsoft/openwnn/WnnClause;-><init>(Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;)V

    .line 476
    .restart local v3    # "head":Ljp/co/omronsoft/openwnn/WnnClause;
    const/4 v13, 0x1

    const/4 v14, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->size(I)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v2, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(III)Ljava/lang/String;

    move-result-object v6

    .line 482
    .end local v4    # "headCandidates":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    :goto_1
    const/4 v10, 0x0

    .line 483
    .local v10, "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_7

    .line 484
    move-object/from16 v0, p0

    iget-object v13, v0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    invoke-virtual {v13, v6}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->consecutiveClauseConvert(Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnSentence;

    move-result-object v10

    move-object v11, v10

    .line 486
    .end local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    .local v11, "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    :goto_2
    if-eqz v3, :cond_6

    .line 487
    new-instance v10, Ljp/co/omronsoft/openwnn/WnnSentence;

    invoke-direct {v10, v3, v11}, Ljp/co/omronsoft/openwnn/WnnSentence;-><init>(Ljp/co/omronsoft/openwnn/WnnClause;Ljp/co/omronsoft/openwnn/WnnSentence;)V

    .line 489
    .end local v11    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    .restart local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    :goto_3
    if-nez v10, :cond_4

    .line 490
    const/4 v13, 0x0

    goto :goto_0

    .line 479
    .end local v6    # "input":Ljava/lang/String;
    .end local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    :cond_3
    const/4 v13, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljp/co/omronsoft/openwnn/ComposingText;->toString(I)Ljava/lang/String;

    move-result-object v6

    .restart local v6    # "input":Ljava/lang/String;
    goto :goto_1

    .line 493
    .restart local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    :cond_4
    iget-object v13, v10, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    new-array v12, v13, [Ljp/co/omronsoft/openwnn/StrSegmentClause;

    .line 494
    .local v12, "ss":[Ljp/co/omronsoft/openwnn/StrSegmentClause;
    const/4 v9, 0x0

    .line 495
    .local v9, "pos":I
    const/4 v5, 0x0

    .line 496
    .local v5, "idx":I
    iget-object v13, v10, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 497
    .local v7, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 498
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/omronsoft/openwnn/WnnClause;

    .line 499
    .local v1, "clause":Ljp/co/omronsoft/openwnn/WnnClause;
    iget-object v13, v1, Ljp/co/omronsoft/openwnn/WnnClause;->stroke:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v8

    .line 500
    .local v8, "len":I
    new-instance v13, Ljp/co/omronsoft/openwnn/StrSegmentClause;

    add-int v14, v9, v8

    add-int/lit8 v14, v14, -0x1

    invoke-direct {v13, v1, v9, v14}, Ljp/co/omronsoft/openwnn/StrSegmentClause;-><init>(Ljp/co/omronsoft/openwnn/WnnClause;II)V

    aput-object v13, v12, v5

    .line 501
    add-int/2addr v9, v8

    .line 502
    add-int/lit8 v5, v5, 0x1

    .line 503
    goto :goto_4

    .line 504
    .end local v1    # "clause":Ljp/co/omronsoft/openwnn/WnnClause;
    .end local v8    # "len":I
    :cond_5
    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->size(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->setCursor(II)I

    .line 505
    const/4 v13, 0x2

    const/4 v14, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->getCursor(I)I

    move-result v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v12, v14}, Ljp/co/omronsoft/openwnn/ComposingText;->replaceStrSegment(I[Ljp/co/omronsoft/openwnn/StrSegment;I)V

    .line 506
    move-object/from16 v0, p0

    iput-object v10, v0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvertSentence:Ljp/co/omronsoft/openwnn/WnnSentence;

    .line 508
    const/4 v13, 0x0

    goto/16 :goto_0

    .end local v5    # "idx":I
    .end local v7    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    .end local v9    # "pos":I
    .end local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    .end local v12    # "ss":[Ljp/co/omronsoft/openwnn/StrSegmentClause;
    .restart local v11    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    :cond_6
    move-object v10, v11

    .end local v11    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    .restart local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    goto :goto_3

    :cond_7
    move-object v11, v10

    .end local v10    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    .restart local v11    # "sentence":Ljp/co/omronsoft/openwnn/WnnSentence;
    goto :goto_2
.end method

.method public deleteWord(Ljp/co/omronsoft/openwnn/WnnWord;)Z
    .locals 3
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    const/4 v2, 0x0

    .line 580
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 581
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0, p1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->removeWordFromUserDictionary(Ljp/co/omronsoft/openwnn/WnnWord;)I

    .line 582
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v0, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 583
    return v2
.end method

.method public doExactSearch(Ljava/lang/String;Ljava/lang/String;)Ljp/co/omronsoft/openwnn/WnnWord;
    .locals 5
    .param p1, "hirakana"    # Ljava/lang/String;
    .param p2, "word"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 391
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 392
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-object v1

    .line 396
    :cond_1
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 399
    invoke-direct {p0, v4}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->setDictionaryForPrediction(I)V

    .line 402
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v4}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 404
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v3, v3, p1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->searchWord(IILjava/lang/String;)I

    .line 407
    const/4 v0, -0x1

    .line 410
    .local v0, "count":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 411
    invoke-direct {p0, v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->getCandidate(I)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v1

    .line 412
    .local v1, "wnnword":Ljp/co/omronsoft/openwnn/WnnWord;
    if-eqz v1, :cond_3

    iget-object v2, v1, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 413
    :cond_3
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v3}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    goto :goto_0
.end method

.method public doPredictionSearch(Ljp/co/omronsoft/openwnn/WnnWord;)Ljava/util/ArrayList;
    .locals 8
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/co/omronsoft/openwnn/WnnWord;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    const/4 v7, 0x0

    .line 420
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 421
    if-nez p1, :cond_1

    move-object v1, v3

    .line 450
    :cond_0
    :goto_0
    return-object v1

    .line 425
    :cond_1
    const-string/jumbo v4, ""

    iput-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 428
    invoke-direct {p0, v7}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->setDictionaryForPrediction(I)V

    .line 431
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v4, v5}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    move-result v4

    if-ne v4, v5, :cond_3

    .line 433
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v5, 0x2

    const-string/jumbo v6, ""

    invoke-interface {v4, v5, v7, v6, p1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->searchWord(IILjava/lang/String;Ljp/co/omronsoft/openwnn/WnnWord;)I

    .line 436
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 439
    .local v0, "count":I
    :goto_1
    invoke-direct {p0, v0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->getCandidate(I)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v2

    .local v2, "wnnword":Ljp/co/omronsoft/openwnn/WnnWord;
    if-eqz v2, :cond_2

    .line 440
    iget-object v4, v2, Ljp/co/omronsoft/openwnn/WnnWord;->candidate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 441
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_2
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v4, v7}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 444
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    move-object v1, v3

    .line 445
    goto :goto_0

    .end local v0    # "count":I
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2    # "wnnword":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_3
    move-object v1, v3

    .line 450
    goto :goto_0
.end method

.method public getNextCandidate()Ljp/co/omronsoft/openwnn/WnnWord;
    .locals 2

    .prologue
    .line 525
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 526
    const/4 v0, 0x0

    .line 532
    :cond_0
    :goto_0
    return-object v0

    .line 528
    :cond_1
    iget v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mOutputNum:I

    invoke-direct {p0, v1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->getCandidate(I)Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v0

    .line 529
    .local v0, "word":Ljp/co/omronsoft/openwnn/WnnWord;
    if-eqz v0, :cond_0

    .line 530
    iget v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mOutputNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mOutputNum:I

    goto :goto_0
.end method

.method public getUserDictionaryWords()[Ljp/co/omronsoft/openwnn/WnnWord;
    .locals 3

    .prologue
    .line 636
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 637
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getUserDictionaryWords()[Ljp/co/omronsoft/openwnn/WnnWord;

    move-result-object v0

    .line 638
    .local v0, "result":[Ljp/co/omronsoft/openwnn/WnnWord;
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 641
    new-instance v1, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$WnnWordComparator;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$WnnWordComparator;-><init>(Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP$1;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 643
    return-object v0
.end method

.method public init()V
    .locals 2

    .prologue
    .line 381
    invoke-virtual {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearPreviousWord()V

    .line 382
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->setDictionary(Ljp/co/omronsoft/openwnn/WnnDictionary;)V

    .line 383
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKanaConverter:Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;

    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-virtual {v0, v1}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->setDictionary(Ljp/co/omronsoft/openwnn/WnnDictionary;)V

    .line 384
    return-void
.end method

.method public initializeDictionary(I)Z
    .locals 3
    .param p1, "dictionary"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 612
    packed-switch p1, :pswitch_data_0

    move v0, v1

    .line 625
    :goto_0
    return v0

    .line 614
    :pswitch_0
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 615
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearLearnDictionary()I

    .line 616
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    goto :goto_0

    .line 620
    :pswitch_1
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    .line 621
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2}, Ljp/co/omronsoft/openwnn/WnnDictionary;->clearUserDictionary()I

    .line 622
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    invoke-interface {v2, v1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->setInUseState(Z)Z

    goto :goto_0

    .line 612
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public initializeDictionary(II)Z
    .locals 1
    .param p1, "dictionary"    # I
    .param p2, "type"    # I

    .prologue
    .line 630
    invoke-virtual {p0, p1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->initializeDictionary(I)Z

    move-result v0

    return v0
.end method

.method public learn(Ljp/co/omronsoft/openwnn/WnnWord;)Z
    .locals 6
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 537
    const/4 v2, -0x1

    .line 538
    .local v2, "ret":I
    iget-object v4, p1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    iget v4, v4, Ljp/co/omronsoft/openwnn/WnnPOS;->right:I

    if-nez v4, :cond_0

    .line 539
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    const/4 v5, 0x6

    invoke-interface {v4, v5}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;

    move-result-object v4

    iput-object v4, p1, Ljp/co/omronsoft/openwnn/WnnWord;->partOfSpeech:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 542
    :cond_0
    iget-object v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictionaryJP:Ljp/co/omronsoft/openwnn/WnnDictionary;

    .line 543
    .local v1, "dict":Ljp/co/omronsoft/openwnn/WnnDictionary;
    instance-of v4, p1, Ljp/co/omronsoft/openwnn/WnnSentence;

    if-eqz v4, :cond_4

    .line 544
    check-cast p1, Ljp/co/omronsoft/openwnn/WnnSentence;

    .end local p1    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    iget-object v4, p1, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 545
    .local v0, "clauses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 546
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/omronsoft/openwnn/WnnWord;

    .line 547
    .local v3, "wd":Ljp/co/omronsoft/openwnn/WnnWord;
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    if-eqz v4, :cond_3

    .line 548
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-interface {v1, v3, v4}, Ljp/co/omronsoft/openwnn/WnnDictionary;->learnWord(Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v2

    .line 552
    :goto_0
    iput-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    .line 553
    if-eqz v2, :cond_1

    .line 567
    .end local v0    # "clauses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    .end local v3    # "wd":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_2
    :goto_1
    if-nez v2, :cond_6

    const/4 v4, 0x1

    :goto_2
    return v4

    .line 550
    .restart local v0    # "clauses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    .restart local v3    # "wd":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_3
    invoke-interface {v1, v3}, Ljp/co/omronsoft/openwnn/WnnDictionary;->learnWord(Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v2

    goto :goto_0

    .line 558
    .end local v0    # "clauses":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljp/co/omronsoft/openwnn/WnnClause;>;"
    .end local v3    # "wd":Ljp/co/omronsoft/openwnn/WnnWord;
    .restart local p1    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_4
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    if-eqz v4, :cond_5

    .line 559
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-interface {v1, p1, v4}, Ljp/co/omronsoft/openwnn/WnnDictionary;->learnWord(Ljp/co/omronsoft/openwnn/WnnWord;Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v2

    .line 563
    :goto_3
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    .line 564
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    invoke-virtual {v4, v1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->setDictionary(Ljp/co/omronsoft/openwnn/WnnDictionary;)V

    goto :goto_1

    .line 561
    :cond_5
    invoke-interface {v1, p1}, Ljp/co/omronsoft/openwnn/WnnDictionary;->learnWord(Ljp/co/omronsoft/openwnn/WnnWord;)I

    move-result v2

    goto :goto_3

    .line 567
    .end local p1    # "word":Ljp/co/omronsoft/openwnn/WnnWord;
    :cond_6
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public makeCandidateListOf(I)I
    .locals 3
    .param p1, "clausePosition"    # I

    .prologue
    const/4 v1, 0x1

    .line 597
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 599
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvertSentence:Ljp/co/omronsoft/openwnn/WnnSentence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvertSentence:Ljp/co/omronsoft/openwnn/WnnSentence;

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, p1, :cond_1

    .line 600
    :cond_0
    const/4 v1, 0x0

    .line 607
    :goto_0
    return v1

    .line 602
    :cond_1
    iput-boolean v1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mSingleClauseMode:Z

    .line 603
    iget-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mConvertSentence:Ljp/co/omronsoft/openwnn/WnnSentence;

    iget-object v2, v2, Ljp/co/omronsoft/openwnn/WnnSentence;->elements:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/co/omronsoft/openwnn/WnnClause;

    .line 604
    .local v0, "clause":Ljp/co/omronsoft/openwnn/WnnClause;
    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnClause;->stroke:Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputHiragana:Ljava/lang/String;

    .line 605
    iget-object v2, v0, Ljp/co/omronsoft/openwnn/WnnClause;->candidate:Ljava/lang/String;

    iput-object v2, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mInputRomaji:Ljava/lang/String;

    goto :goto_0
.end method

.method public predict(Ljp/co/omronsoft/openwnn/ComposingText;II)I
    .locals 1
    .param p1, "text"    # Ljp/co/omronsoft/openwnn/ComposingText;
    .param p2, "minLen"    # I
    .param p3, "maxLen"    # I

    .prologue
    .line 661
    const/4 v0, 0x0

    return v0
.end method

.method public searchWords(Ljava/lang/String;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 513
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 514
    const/4 v0, 0x0

    return v0
.end method

.method public searchWords(Ljp/co/omronsoft/openwnn/WnnWord;)I
    .locals 1
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 519
    invoke-direct {p0}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->clearCandidates()V

    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public setDictionary(I)Z
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 305
    iput p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mDictType:I

    .line 306
    const/4 v0, 0x1

    return v0
.end method

.method public setFilter(Ljp/co/omronsoft/openwnn/CandidateFilter;)V
    .locals 1
    .param p1, "filter"    # Ljp/co/omronsoft/openwnn/CandidateFilter;

    .prologue
    .line 372
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mFilter:Ljp/co/omronsoft/openwnn/CandidateFilter;

    .line 373
    iget-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mClauseConverter:Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;

    invoke-virtual {v0, p1}, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnClauseConverterJAJP;->setFilter(Ljp/co/omronsoft/openwnn/CandidateFilter;)V

    .line 374
    return-void
.end method

.method public setKeyboardType(I)V
    .locals 0
    .param p1, "keyboardType"    # I

    .prologue
    .line 362
    iput p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mKeyboardType:I

    .line 363
    return-void
.end method

.method public setPreferences(Landroid/content/SharedPreferences;)V
    .locals 0
    .param p1, "pref"    # Landroid/content/SharedPreferences;

    .prologue
    .line 588
    return-void
.end method

.method public setPreviousWord(Ljp/co/omronsoft/openwnn/WnnWord;)V
    .locals 0
    .param p1, "word"    # Ljp/co/omronsoft/openwnn/WnnWord;

    .prologue
    .line 352
    iput-object p1, p0, Ljp/co/omronsoft/openwnn/JAJP/OpenWnnEngineJAJP;->mPreviousWord:Ljp/co/omronsoft/openwnn/WnnWord;

    .line 353
    return-void
.end method
