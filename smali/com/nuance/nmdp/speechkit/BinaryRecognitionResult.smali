.class public Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;
.super Ljava/lang/Object;
.source "BinaryRecognitionResult.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;
    }
.end annotation


# instance fields
.field private _binResult:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

.field private _isFinalResponse:Z

.field private _results:[Ljava/lang/String;

.field private _scores:[I

.field private _suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_results:[Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_scores:[I

    .line 48
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_suggestion:Ljava/lang/String;

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;)Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;
    .param p1, "x1"    # Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_binResult:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    return-object p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;)Z
    .locals 1
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;

    .prologue
    .line 12
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_isFinalResponse:Z

    return v0
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;
    .param p1, "x1"    # Z

    .prologue
    .line 12
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_isFinalResponse:Z

    return p1
.end method


# virtual methods
.method public getDetailedResults()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x0

    return-object v0
.end method

.method getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/Recognition;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$1;-><init>(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;)V

    return-object v0
.end method

.method public getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 67
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_scores:[I

    array-length v0, v0

    if-lt p1, v0, :cond_1

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "index must be >= 0 and < getResultCount()."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_1
    new-instance v0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_results:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_scores:[I

    aget v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult$ResultImpl;-><init>(Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;Ljava/lang/String;I)V

    return-object v0
.end method

.method public getResultCount()I
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_scores:[I

    array-length v0, v0

    return v0
.end method

.method public getSuggestion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_suggestion:Ljava/lang/String;

    return-object v0
.end method

.method public isFinalResponse()Z
    .locals 1

    .prologue
    .line 22
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_isFinalResponse:Z

    return v0
.end method

.method public results()Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/BinaryRecognitionResult;->_binResult:Lcom/nuance/nmsp/client/util/dictationresult/DictationResult;

    return-object v0
.end method
