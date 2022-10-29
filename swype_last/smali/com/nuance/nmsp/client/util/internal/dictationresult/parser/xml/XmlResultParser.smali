.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/ResultParser;


# static fields
.field private static final a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;


# instance fields
.field private b:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;

    invoke-static {v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory;->getLog(Ljava/lang/Class;)Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    move-result-object v0

    sput-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->b:[B

    return-void
.end method


# virtual methods
.method public parse()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .registers 5

    sget-object v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    const-string/jumbo v1, "Unpacking XML dictation results."

    invoke-virtual {v0, v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :try_start_8
    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLParserAndroid;

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->b:[B

    invoke-direct {v0, v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/xmlResults/XMLParserAndroid;-><init>([B)V

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->parse()V

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->resultIsValid()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v0

    :goto_1c
    return-object v0

    :cond_1d
    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_45

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not parse XML dictation results: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->getErrorMsg()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ". Trying to parse NLSML results."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->debug(Ljava/lang/Object;)V

    :cond_45
    new-instance v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLParserAndroid;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->b:[B

    invoke-direct {v1, v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLParserAndroid;-><init>([B)V

    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->parse()V

    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->resultIsValid()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v0

    goto :goto_1c

    :cond_5a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Could not parse XML neither NLSML dictation results. Error from XML Parser: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ". Error from NLSML Parser: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v1

    if-eqz v1, :cond_8a

    sget-object v1, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;)V

    :cond_8a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_90
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_90} :catch_90

    :catch_90
    move-exception v0

    const-string/jumbo v1, "Received IOException while parsing XML/NLSML."

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->isErrorEnabled()Z

    move-result v2

    if-eqz v2, :cond_a1

    sget-object v2, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XmlResultParser;->a:Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;

    invoke-virtual {v2, v1, v0}, Lcom/nuance/nmsp/client/sdk/common/oem/api/LogFactory$Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_a1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
