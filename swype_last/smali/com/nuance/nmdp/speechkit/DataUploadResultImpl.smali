.class final Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;
.super Ljava/lang/Object;
.source "DataUploadResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;
    }
.end annotation


# instance fields
.field private _dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

.field private _isVocRegenerated:Z


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_isVocRegenerated:Z

    .line 79
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    .line 80
    return-void
.end method

.method static synthetic access$002(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 9
    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_isVocRegenerated:Z

    return p1
.end method

.method static synthetic access$100(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;)[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;

    .prologue
    .line 9
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    return-object v0
.end method

.method static synthetic access$102(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;)[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;
    .registers 2
    .param p0, "x0"    # Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;
    .param p1, "x1"    # [Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    .prologue
    .line 9
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    return-object p1
.end method


# virtual methods
.method public final getDataResult(I)Lcom/nuance/nmdp/speechkit/DataUploadResult$DataResult;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 139
    if-ltz p1, :cond_c

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    array-length v0, v0

    if-ge p1, v0, :cond_c

    .line 140
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    aget-object v0, v0, p1

    .line 141
    :goto_b
    return-object v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final getDataResultCount()I
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_dataResults:[Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;

    array-length v0, v0

    return v0
.end method

.method final getParser()Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/util/parsers/IPdxParser",
            "<",
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 84
    new-instance v0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$1;-><init>(Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;)V

    return-object v0
.end method

.method public final isVocRegenerated()Z
    .registers 2

    .prologue
    .line 134
    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;->_isVocRegenerated:Z

    return v0
.end method
