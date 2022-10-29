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
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

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
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v2, "input"

    if-eq v0, v2, :cond_1d

    :cond_14
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    if-nez v0, :cond_2a

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Did not get any timings from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2a
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_37

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "Did not get any character from input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v10, Ljava/util/StringTokenizer;

    const-string/jumbo v2, " "

    invoke-direct {v10, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v11, Ljava/util/StringTokenizer;

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    const-string/jumbo v2, ","

    invoke-direct {v11, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    if-eqz v0, :cond_f1

    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    const-string/jumbo v3, ","

    invoke-direct {v0, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v0

    :goto_5e
    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    iput-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v0

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v1

    if-eq v0, v1, :cond_9e

    new-instance v0, Lorg/xml/sax/SAXException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "timing("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") and inputs("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") information does not have the same number of items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9e
    new-instance v12, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-direct {v12}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;-><init>()V

    iget-wide v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->g:D

    invoke-virtual {v12, v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->setConfidenceScore(D)V

    :goto_a8
    invoke-virtual {v10}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v0

    if-eqz v0, :cond_ed

    invoke-virtual {v10}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v11}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v6, 0x0

    if-eqz v9, :cond_c2

    invoke-virtual {v9}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    :cond_c2
    const/4 v2, 0x0

    const-string/jumbo v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string/jumbo v4, "-"

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

    goto :goto_a8

    :cond_ed
    invoke-direct {p0, v12}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V

    return-void

    :cond_f1
    move-object v9, v1

    goto/16 :goto_5e
.end method

.method private a(Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;)V
    .registers 8

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_30

    const/4 v0, 0x0

    move v1, v0

    :goto_a
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_30

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->getConfidenceScore()D

    move-result-wide v2

    invoke-virtual {p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/SentenceImpl;->getConfidenceScore()D

    move-result-wide v4

    cmpg-double v0, v2, v4

    if-gez v0, :cond_2c

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_2b
    return-void

    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_30
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2b
.end method


# virtual methods
.method public characters([CII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_22

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received characters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_22
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "input"

    if-ne v0, v1, :cond_46

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    :cond_40
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->c:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_45
    :goto_45
    return-void

    :cond_46
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_45

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_64

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p3}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    :cond_64
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_45
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received endElement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_1d
    const-string/jumbo v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "result"

    if-eq v0, v1, :cond_42

    :cond_39
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "End Element> The top of the stack does not contain the token result"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_47
    :goto_47
    return-void

    :cond_48
    const-string/jumbo v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_64

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "interpretation"

    if-eq v0, v1, :cond_6d

    :cond_64
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "End Element> The top of the stack does not contain the token interpretation"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6d
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_47

    :cond_73
    const-string/jumbo v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_85

    invoke-direct {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a()V

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_47

    :cond_85
    const-string/jumbo v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b0

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a1

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "NSS_Audio_Statistics"

    if-eq v0, v1, :cond_aa

    :cond_a1
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "End Element> The top of the stack does not contain the token NSS_Audio_Statistics"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_aa
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto :goto_47

    :cond_b0
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "NSS_Audio_Statistics"

    if-ne v0, v1, :cond_47

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    if-nez v0, :cond_e5

    const-string/jumbo v0, ""

    :goto_ca
    const-string/jumbo v1, "InputAudioLength"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_db

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    const-string/jumbo v2, "IAL"

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_db
    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    goto/16 :goto_47

    :cond_e5
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->d:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_ca
.end method

.method public getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .registers 4

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->h:Ljava/util/Vector;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->i:Ljava/util/Hashtable;

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/DictationResultImpl;-><init>(Ljava/util/Vector;Ljava/util/Hashtable;)V

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Received startElement "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->trace(Ljava/lang/Object;)V

    :cond_1d
    const-string/jumbo v0, "result"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->size()I

    move-result v0

    if-eqz v0, :cond_37

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> Found result but it is not the first token."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_37
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3f
    :goto_3f
    return-void

    :cond_40
    const-string/jumbo v0, "interpretation"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ba

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5c

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "result"

    if-eq v0, v1, :cond_65

    :cond_5c
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> The interpretation token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_65
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string/jumbo v1, "interpretation"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "timing"

    invoke-interface {p4, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "confidence"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "word_confidence"

    invoke-interface {p4, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v0, :cond_8d

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> There are no timings associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8d
    if-nez v1, :cond_98

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> There is no confidence associated with this interpretation."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_98
    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->e:Ljava/lang/String;

    iput-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->f:Ljava/lang/String;

    :try_start_9c
    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->g:D
    :try_end_a2
    .catch Ljava/lang/NumberFormatException; {:try_start_9c .. :try_end_a2} :catch_a3

    goto :goto_3f

    :catch_a3
    move-exception v0

    new-instance v2, Lorg/xml/sax/SAXException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "StartElement> Could not parse the confidence: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_ba
    const-string/jumbo v0, "input"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e9

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d6

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "interpretation"

    if-eq v0, v1, :cond_df

    :cond_d6
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> The input token was found without a interpretation being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_df
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string/jumbo v1, "input"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3f

    :cond_e9
    const-string/jumbo v0, "NSS_Audio_Statistics"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_105

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "result"

    if-eq v0, v1, :cond_10e

    :cond_105
    new-instance v0, Lorg/xml/sax/SAXException;

    const-string/jumbo v1, "StartElement> The NSS_Audio_Statistics token was found without a result being opened before."

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10e
    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLResultsHandler;->b:Ljava/util/Stack;

    const-string/jumbo v1, "NSS_Audio_Statistics"

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3f
.end method
