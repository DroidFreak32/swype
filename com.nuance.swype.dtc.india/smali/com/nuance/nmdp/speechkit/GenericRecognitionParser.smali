.class final Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;
.super Ljava/lang/Object;
.source "GenericRecognitionParser.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;"
    }
.end annotation


# instance fields
.field private _expectMore:Z

.field private _recognitions:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_recognitions:Ljava/util/LinkedList;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_expectMore:Z

    .line 75
    return-void
.end method


# virtual methods
.method public final expectMore()Z
    .locals 1

    .prologue
    .line 108
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_expectMore:Z

    return v0
.end method

.method public final getParsed()Lcom/nuance/nmdp/speechkit/GenericRecognition;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_recognitions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_recognitions:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/GenericRecognition;

    .line 102
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final bridge synthetic getParsed()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->getParsed()Lcom/nuance/nmdp/speechkit/GenericRecognition;

    move-result-object v0

    return-object v0
.end method

.method public final parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z
    .locals 5
    .param p1, "result"    # Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 82
    :try_start_0
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/util/PdxParamUtils;->createFromPdx(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v1

    .line 84
    .local v1, "pdxDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    new-instance v0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;

    invoke-direct {v0, v1}, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    .line 85
    .local v0, "parsed":Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->isFinalResult()Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v2

    :goto_0
    iput-boolean v4, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_expectMore:Z

    .line 86
    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->_recognitions:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .end local v0    # "parsed":Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
    .end local v1    # "pdxDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :goto_1
    return v2

    .restart local v0    # "parsed":Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
    .restart local v1    # "pdxDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :cond_0
    move v4, v3

    .line 85
    goto :goto_0

    .line 90
    .end local v0    # "parsed":Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
    .end local v1    # "pdxDict":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    :catch_0
    move-exception v2

    const-string/jumbo v2, "Error parsing result"

    invoke-static {p0, v2}, Lcom/nuance/nmdp/speechkit/util/Logger;->error(Ljava/lang/Object;Ljava/lang/String;)V

    move v2, v3

    .line 92
    goto :goto_1
.end method

.method public final bridge synthetic parse(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 12
    check-cast p1, Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;->parse(Lcom/nuance/nmsp/client/sdk/components/resource/nmas/QueryResult;)Z

    move-result v0

    return v0
.end method
