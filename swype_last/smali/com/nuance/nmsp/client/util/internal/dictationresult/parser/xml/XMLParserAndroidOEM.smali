.class public abstract Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserOEM;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;
    }
.end annotation


# instance fields
.field private a:[B

.field private b:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->c:Ljava/lang/String;

    if-nez p1, :cond_13

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Buffer cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    iput-object p1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->a:[B

    return-void
.end method

.method private static a([B)Z
    .registers 4

    :try_start_0
    new-instance v0, Ljava/io/InputStreamReader;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v2, "UTF8"

    invoke-direct {v0, v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_17
    .catchall {:try_start_0 .. :try_end_d} :catchall_23

    :try_start_d
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_10} :catch_12

    :goto_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :catch_12
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_10

    :catch_17
    move-exception v0

    const/4 v0, 0x0

    :try_start_19
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e

    :goto_1c
    const/4 v0, 0x0

    goto :goto_11

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c

    :catchall_23
    move-exception v0

    const/4 v1, 0x0

    :try_start_25
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    :goto_28
    throw v0

    :catch_29
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_28
.end method


# virtual methods
.method public final getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->b:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    return-object v0
.end method

.method public final getErrorMsg()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->c:Ljava/lang/String;

    return-object v0
.end method

.method public abstract getResultHandler()Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;
.end method

.method public final parse()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    const-string/jumbo v0, "org.xml.sax.driver"

    const-string/jumbo v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->a:[B

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    iget-object v1, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->a:[B

    invoke-static {v1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->a([B)Z

    move-result v1

    if-nez v1, :cond_23

    const-string/jumbo v1, "cp1252"

    invoke-virtual {v0, v1}, Lorg/xml/sax/InputSource;->setEncoding(Ljava/lang/String;)V

    :cond_23
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->getResultHandler()Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    invoke-interface {v2}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;->getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->b:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    :try_end_37
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_37} :catch_38

    :goto_37
    return-void

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->c:Ljava/lang/String;

    goto :goto_37
.end method

.method public final resultIsValid()Z
    .registers 2

    iget-object v0, p0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;->b:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method
