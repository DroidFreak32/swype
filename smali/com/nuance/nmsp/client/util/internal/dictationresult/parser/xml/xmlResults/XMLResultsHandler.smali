.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;


# static fields
.field public static final ATTR_CONFIDENCE:Ljava/lang/String; = "confidence"

.field public static final ATTR_GRAMMAR:Ljava/lang/String; = "grammar"

.field public static final ATTR_MODE:Ljava/lang/String; = "mode"

.field public static final ATTR_TIMING:Ljava/lang/String; = "timing"

.field public static final ATTR_WORDS_CONFIDENCE:Ljava/lang/String; = "word_confidence"

.field public static final ELEM_AUDIO_STATS:Ljava/lang/String; = "NSS_Audio_Statistics"

.field public static final ELEM_INPUT:Ljava/lang/String; = "input"

.field public static final ELEM_INTERPRETATION:Ljava/lang/String; = "interpretation"

.field public static final ELEM_RESULT:Ljava/lang/String; = "result"

.field public static final SEP_COMMA:Ljava/lang/String; = ","

.field public static final SEP_HYPHEN:Ljava/lang/String; = "-"

.field public static final SEP_SPACE:Ljava/lang/String; = " "

.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:Ljava/util/Stack;

.field private c:Ljava/lang/StringBuffer;

.field private d:Ljava/lang/StringBuffer;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:D

.field private h:Ljava/util/Vector;

.field private i:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->g:D

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    return-void
.end method

.method private a()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "input"

    if-eq v0, v2, :cond_1

    :cond_0
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Did not get any timings from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_3

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Did not get any character from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/StringTokenizer;

    const-string v2, " "

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    const-string v2, ","

    invoke-direct {v11, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    if-eqz v0, :cond_7

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    const-string v3, ","

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    :goto_0
    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-eq v0, v1, :cond_4

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "timing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") and inputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") information does not have the same number of items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v12, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v12}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->g:D

    invoke-virtual {v12, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->setConfidenceScore(D)V

    :goto_1
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v9, :cond_5

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_5
    const/4 v2, 0x0

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;

    const/4 v8, 0x1

    invoke-direct/range {v0 .. v8}, Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;-><init>(Ljava/lang/String;JJDZ)V

    invoke-virtual {v12, v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->appendTokenToSentence(Lcom/nuance/nmsp/client/util/internal/dictationresult/TokenImpl;)V

    goto :goto_1

    :cond_6
    invoke-direct {p0, v12}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    return-void

    :cond_7
    move-object v9, v1

    goto/16 :goto_0
.end method

.method private a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .locals 6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->getConfidenceScore()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->getConfidenceScore()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_1
    return-void

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "input"

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    :cond_4
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received endElement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token result"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "interpretation"

    if-eq v0, v1, :cond_6

    :cond_5
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_7
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_8
    const-string v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-eq v0, v1, :cond_a

    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "End Element> The top of the stack does not contain the token NSS_Audio_Statistics"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_0

    :cond_b
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_d

    const-string v0, ""

    :goto_1
    const-string v1, "InputAudioLength"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    const-string v2, "IAL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_c
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method public getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .locals 3

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Received startElement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_0
    const-string v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> Found result but it is not the first token."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string v1, "result"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void

    :cond_3
    const-string v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_5

    :cond_4
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The interpretation token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string v1, "interpretation"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "timing"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "word_confidence"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_6

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> There are no timings associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-nez v1, :cond_7

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> There is no confidence associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    :try_start_0
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->g:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "StartElement> Could not parse the confidence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_8
    const-string v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "interpretation"

    if-eq v0, v1, :cond_a

    :cond_9
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The input token was found without a interpretation being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string v1, "input"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_b
    const-string v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "result"

    if-eq v0, v1, :cond_d

    :cond_c
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "StartElement> The NSS_Audio_Statistics token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string v1, "NSS_Audio_Statistics"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method
