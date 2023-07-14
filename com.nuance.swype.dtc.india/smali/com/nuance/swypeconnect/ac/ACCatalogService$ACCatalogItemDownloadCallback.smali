.class public interface abstract Lcom/nuance/swypeconnect/ac/ACCatalogService$ACCatalogItemDownloadCallback;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swypeconnect/ac/ACCatalogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ACCatalogItemDownloadCallback"
.end annotation


# virtual methods
.method public abstract downloadComplete(Ljava/io/File;)Z
.end method

.method public abstract downloadFailed(I)V
.end method

.method public abstract downloadPercentage(I)V
.end method

.method public abstract downloadStarted()V
.end method

.method public abstract downloadStopped(I)V
.end method
