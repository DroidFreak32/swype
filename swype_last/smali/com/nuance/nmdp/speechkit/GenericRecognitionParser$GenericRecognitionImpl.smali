.class Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;
.super Ljava/lang/Object;
.source "GenericRecognitionParser.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericRecognition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/GenericRecognitionParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GenericRecognitionImpl"
.end annotation


# instance fields
.field private final _appserverDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

.field private final _final:Z

.field private final _fullDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
    .registers 8
    .param p1, "dict"    # Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .prologue
    const/4 v3, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_fullDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 24
    const/4 v2, 0x1

    .line 26
    .local v2, "isFinal":Z
    if-nez p1, :cond_33

    move-object v1, v3

    .line 27
    .local v1, "f":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :goto_a
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1c

    .line 29
    check-cast v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    .end local v1    # "f":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->get()I

    move-result v4

    if-nez v4, :cond_1c

    .line 31
    const/4 v2, 0x0

    .line 35
    :cond_1c
    const-string/jumbo v4, "appserver_results"

    invoke-virtual {p1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    move-result-object v0

    .line 36
    .local v0, "appserverResults":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    if-eqz v0, :cond_3b

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3b

    .line 38
    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .end local v0    # "appserverResults":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_appserverDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    .line 44
    :goto_30
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_final:Z

    .line 45
    return-void

    .line 26
    :cond_33
    const-string/jumbo v4, "final_response"

    invoke-virtual {p1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    move-result-object v1

    goto :goto_a

    .line 42
    .restart local v0    # "appserverResults":Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    :cond_3b
    iput-object v3, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_appserverDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    goto :goto_30
.end method


# virtual methods
.method public getAppserverResult()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_appserverDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    return-object v0
.end method

.method public getFullResult()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_fullDict:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    return-object v0
.end method

.method public isFinalResult()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/GenericRecognitionParser$GenericRecognitionImpl;->_final:Z

    return v0
.end method
