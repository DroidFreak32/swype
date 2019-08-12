.class public interface abstract Lcom/nuance/nmdp/speechkit/DataUploadResult$DataResult;
.super Ljava/lang/Object;
.source "DataUploadResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/DataUploadResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DataResult"
.end annotation


# virtual methods
.method public abstract getChecksum()I
.end method

.method public abstract getDataCount()I
.end method

.method public abstract getForceUpload()I
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getStatus()Ljava/lang/String;
.end method

.method public abstract getType()Ljava/lang/String;
.end method
