.class public Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLParserAndroid;
.super Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM;-><init>([B)V

    return-void
.end method


# virtual methods
.method protected getResultHandler()Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/XMLParserAndroidOEM$ResultsHandler;
    .locals 1

    new-instance v0, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLResultsHandler;

    invoke-direct {v0}, Lcom/nuance/nmsp/client/util/internal/dictationresult/parser/xml/nlsmlResults/NLSMLResultsHandler;-><init>()V

    return-object v0
.end method
