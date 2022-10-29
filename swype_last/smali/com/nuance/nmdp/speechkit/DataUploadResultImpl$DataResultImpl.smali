.class final Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;
.super Ljava/lang/Object;
.source "DataUploadResultImpl.java"

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadResult$DataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/DataUploadResultImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DataResultImpl"
.end annotation


# instance fields
.field private _checksum:Ljava/lang/String;

.field private _count:I

.field private _force:I

.field private _id:Ljava/lang/String;

.field private _status:Ljava/lang/String;

.field private _type:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getChecksum()I
    .registers 2

    .prologue
    .line 56
    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_checksum:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7

    move-result v0

    .line 58
    :goto_6
    return v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public final getDataCount()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_count:I

    return v0
.end method

.method public final getForceUpload()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_force:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_id:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_status:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_type:Ljava/lang/String;

    return-object v0
.end method

.method final parse(Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;)Z
    .registers 3
    .param p1, "dict"    # Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;

    .prologue
    .line 22
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 23
    const-string/jumbo v0, "id"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_id:Ljava/lang/String;

    .line 24
    :cond_12
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 25
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_type:Ljava/lang/String;

    .line 26
    :cond_24
    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 27
    const-string/jumbo v0, "status"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_status:Ljava/lang/String;

    .line 28
    :cond_36
    const-string/jumbo v0, "checksum"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 29
    const-string/jumbo v0, "checksum"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getUTF8String(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_checksum:Ljava/lang/String;

    .line 30
    :cond_48
    const-string/jumbo v0, "force_upload"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 31
    const-string/jumbo v0, "force_upload"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_force:I

    .line 32
    :cond_5a
    const-string/jumbo v0, "final_count"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6c

    .line 33
    const-string/jumbo v0, "final_count"

    invoke-interface {p1, v0}, Lcom/nuance/nmsp/client/sdk/components/core/pdx/Dictionary;->getInteger(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/DataUploadResultImpl$DataResultImpl;->_count:I

    .line 35
    :cond_6c
    const/4 v0, 0x1

    return v0
.end method
