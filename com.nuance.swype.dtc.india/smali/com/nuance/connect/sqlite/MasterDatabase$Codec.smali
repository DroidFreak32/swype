.class public interface abstract Lcom/nuance/connect/sqlite/MasterDatabase$Codec;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Codec"
.end annotation


# virtual methods
.method public abstract decryptString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract encryptString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getActualColumnName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getLogicalColumnName(Ljava/lang/String;)Ljava/lang/String;
.end method
