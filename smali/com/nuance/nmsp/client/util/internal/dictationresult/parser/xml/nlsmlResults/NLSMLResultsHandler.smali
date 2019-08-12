.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLResultsHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;

# interfaces
.implements Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public getDictationResult()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lorg/xml/sax/SAXException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
