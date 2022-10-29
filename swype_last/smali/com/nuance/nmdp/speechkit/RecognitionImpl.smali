.class final Lcom/nuance/nmdp/speechkit/RecognitionImpl;
.super Ljava/lang/Object;
.source "RecognitionImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/Recognition;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;
    }
.end annotation


# instance fields
.field private _detailedResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/recognitionresult/DetailedResult;",
            ">;"
        }
    .end annotation
.end field

.field private _isFinalResponse:Z

.field private _results:[Ljava/lang/String;

.field private _scores:[I

.field private _suggestion:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_results:[Ljava/lang/String;

    .line 44
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_scores:[I

    .line 45
    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_suggestion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    .prologue
    .line 11
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_detailedResults:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_detailedResults:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[Ljava/lang/String;)[Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;
    .param p1, "x1"    # [Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_results:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/nuance/nmdp/speechkit/RecognitionImpl;[I)[I
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;
    .param p1, "x1"    # [I

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_scores:[I

    return-object p1
.end method

.method static synthetic access$302(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_suggestion:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;

    .prologue
    .line 11
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_isFinalResponse:Z

    return v0
.end method

.method static synthetic access$402(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/RecognitionImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 11
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_isFinalResponse:Z

    return p1
.end method


# virtual methods
.method public final getDetailedResults()Ljava/util/List;
    .registers 2
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
    .line 147
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_detailedResults:Ljava/util/List;

    return-object v0
.end method

.method final getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
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
    .line 68
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/RecognitionImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/RecognitionImpl;)V

    return-object v0
.end method

.method public final getResult(I)Lcom/nuance/nmdp/speechkit/Recognition$Result;
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 60
    if-ltz p1, :cond_7

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_scores:[I

    array-length v0, v0

    if-lt p1, v0, :cond_10

    .line 61
    :cond_7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string/jumbo v1, "index must be >= 0 and < getResultCount()."

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_10
    new-instance v0, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_results:[Ljava/lang/String;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_scores:[I

    aget v2, v2, p1

    invoke-direct {v0, p0, v1, v2}, Lcom/nuance/nmdp/speechkit/RecognitionImpl$ResultImpl;-><init>(Lcom/nuance/nmdp/speechkit/RecognitionImpl;Ljava/lang/String;I)V

    return-object v0
.end method

.method public final getResultCount()I
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_scores:[I

    array-length v0, v0

    return v0
.end method

.method public final getSuggestion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_suggestion:Ljava/lang/String;

    return-object v0
.end method

.method public final isFinalResponse()Z
    .registers 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/RecognitionImpl;->_isFinalResponse:Z

    return v0
.end method
