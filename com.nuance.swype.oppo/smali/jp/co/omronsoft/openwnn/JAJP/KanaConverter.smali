.class public Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;
.super Ljava/lang/Object;
.source "KanaConverter.java"


# static fields
.field private static final mFormat:Ljava/text/DecimalFormat;

.field private static final mHanEijiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHanKataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHanSuujiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mZenEijiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mZenEijiMapQwety:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mZenKataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mZenSuujiMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddCandidateList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/openwnn/WnnWord;",
            ">;"
        }
    .end annotation
.end field

.field private mPosDefault:Ljp/co/omronsoft/openwnn/WnnPOS;

.field private mPosNumber:Ljp/co/omronsoft/openwnn/WnnPOS;

.field private mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

.field private mStringBuff:Ljava/lang/StringBuffer;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 35
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$1;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$1;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanSuujiMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$2;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$2;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenSuujiMap:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$3;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$3;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanKataMap:Ljava/util/HashMap;

    .line 258
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$4;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$4;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenKataMap:Ljava/util/HashMap;

    .line 353
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$5;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$5;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanEijiMap:Ljava/util/HashMap;

    .line 395
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$6;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$6;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenEijiMap:Ljava/util/HashMap;

    .line 437
    new-instance v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$7;

    invoke-direct {v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter$7;-><init>()V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenEijiMapQwety:Ljava/util/HashMap;

    .line 498
    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "###,###"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mFormat:Ljava/text/DecimalFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 514
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mAddCandidateList:Ljava/util/List;

    .line 515
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    .line 516
    return-void
.end method

.method private convertCaps(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "moji"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 667
    const-string v0, ""

    .line 668
    .local v0, "tmp":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 669
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 672
    :cond_0
    return-object v0
.end method

.method private convertNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "numComma"    # Ljava/lang/String;

    .prologue
    .line 684
    :try_start_0
    sget-object v0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mFormat:Ljava/text/DecimalFormat;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 686
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z
    .locals 4
    .param p1, "input"    # Ljava/lang/String;
    .param p3, "outBuf"    # Ljava/lang/StringBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/StringBuffer;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 646
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 647
    invoke-virtual {p3}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    invoke-virtual {p3, v2, v3}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    .line 649
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 650
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 651
    .local v0, "convChar":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 656
    .end local v0    # "convChar":Ljava/lang/String;
    :goto_1
    return v2

    .line 654
    .restart local v0    # "convChar":Ljava/lang/String;
    :cond_1
    invoke-virtual {p3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 656
    .end local v0    # "convChar":Ljava/lang/String;
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method private createPseudoCandidateListForQwerty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "inputHiragana"    # Ljava/lang/String;
    .param p2, "inputRomaji"    # Ljava/lang/String;

    .prologue
    .line 613
    iget-object v3, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mAddCandidateList:Ljava/util/List;

    .line 616
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljp/co/omronsoft/openwnn/WnnWord;>;"
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 617
    .local v0, "convHanEijiLower":Ljava/lang/String;
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosDefault:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, p2, p1, v5}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 618
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v0, p1, v5}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 619
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v0}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->convertCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v5, p1, v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 620
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v5, p1, v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 623
    sget-object v4, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenEijiMapQwety:Ljava/util/HashMap;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p2, v4, v5}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 624
    iget-object v4, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 625
    .local v1, "convZenEiji":Ljava/lang/String;
    sget-object v4, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "convZenEijiLower":Ljava/lang/String;
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v1, p1, v5}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 627
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v5, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v2, p1, v5}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 628
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v2}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->convertCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v5, p1, v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 629
    new-instance v4, Ljp/co/omronsoft/openwnn/WnnWord;

    sget-object v5, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v1, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v4, v5, p1, v6}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 631
    .end local v1    # "convZenEiji":Ljava/lang/String;
    .end local v2    # "convZenEijiLower":Ljava/lang/String;
    :cond_0
    return-void
.end method


# virtual methods
.method public createPseudoCandidateList(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 10
    .param p1, "inputHiragana"    # Ljava/lang/String;
    .param p2, "inputRomaji"    # Ljava/lang/String;
    .param p3, "keyBoardMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljp/co/omronsoft/openwnn/WnnWord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 545
    iget-object v6, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mAddCandidateList:Ljava/util/List;

    .line 547
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljp/co/omronsoft/openwnn/WnnWord;>;"
    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 548
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    .line 601
    :cond_0
    :goto_0
    return-object v6

    .line 554
    :cond_1
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {v7, p1, p1}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 555
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenKataMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 556
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosDefault:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v8, p1, v9}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 558
    :cond_2
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanKataMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 559
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosDefault:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v8, p1, v9}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 562
    :cond_3
    const/4 v7, 0x2

    if-ne p3, v7, :cond_4

    .line 564
    invoke-direct {p0, p1, p2}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createPseudoCandidateListForQwerty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 569
    :cond_4
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanSuujiMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 570
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 571
    .local v2, "convHanSuuji":Ljava/lang/String;
    invoke-direct {p0, v2}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->convertNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 572
    .local v3, "convNumComma":Ljava/lang/String;
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosNumber:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v2, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 573
    if-eqz v3, :cond_5

    .line 574
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosNumber:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v3, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 579
    .end local v2    # "convHanSuuji":Ljava/lang/String;
    .end local v3    # "convNumComma":Ljava/lang/String;
    :cond_5
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenSuujiMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 580
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosNumber:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v8, p1, v9}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_6
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mHanEijiMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 585
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .local v0, "convHanEiji":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, "convHanEijiLower":Ljava/lang/String;
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v1, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v1}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->convertCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v8, p1, v9}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v0, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .end local v0    # "convHanEiji":Ljava/lang/String;
    .end local v1    # "convHanEijiLower":Ljava/lang/String;
    :cond_7
    sget-object v7, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mZenEijiMap:Ljava/util/HashMap;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-direct {p0, p1, v7, v8}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->createCandidateString(Ljava/lang/String;Ljava/util/HashMap;Ljava/lang/StringBuffer;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 594
    iget-object v7, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mStringBuff:Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    .line 595
    .local v4, "convZenEiji":Ljava/lang/String;
    sget-object v7, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    .line 596
    .local v5, "convZenEijiLower":Ljava/lang/String;
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v5, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 597
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    invoke-direct {p0, v5}, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->convertCaps(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v8, p1, v9}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 598
    new-instance v7, Ljp/co/omronsoft/openwnn/WnnWord;

    iget-object v8, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    invoke-direct {v7, v4, p1, v8}, Ljp/co/omronsoft/openwnn/WnnWord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljp/co/omronsoft/openwnn/WnnPOS;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method

.method public setDictionary(Ljp/co/omronsoft/openwnn/WnnDictionary;)V
    .locals 1
    .param p1, "dict"    # Ljp/co/omronsoft/openwnn/WnnDictionary;

    .prologue
    .line 527
    const/4 v0, 0x6

    invoke-interface {p1, v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosDefault:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 528
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosNumber:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 529
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Ljp/co/omronsoft/openwnn/WnnDictionary;->getPOS(I)Ljp/co/omronsoft/openwnn/WnnPOS;

    move-result-object v0

    iput-object v0, p0, Ljp/co/omronsoft/openwnn/JAJP/KanaConverter;->mPosSymbol:Ljp/co/omronsoft/openwnn/WnnPOS;

    .line 530
    return-void
.end method
