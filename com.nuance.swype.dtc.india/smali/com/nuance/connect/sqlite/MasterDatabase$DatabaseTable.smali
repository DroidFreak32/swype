.class public interface abstract Lcom/nuance/connect/sqlite/MasterDatabase$DatabaseTable;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/sqlite/MasterDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DatabaseTable"
.end annotation


# virtual methods
.method public abstract beginTransaction()V
.end method

.method public abstract delete(Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public abstract deleteAll()Z
.end method

.method public abstract endTransaction()V
.end method

.method public abstract getCodec()Lcom/nuance/connect/sqlite/MasterDatabase$Codec;
.end method

.method public abstract getColumnName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract insert(Ljava/lang/String;Landroid/content/ContentValues;)J
.end method

.method public abstract insertWithOnConflict(Ljava/lang/String;Landroid/content/ContentValues;I)J
.end method

.method public abstract isFull()Z
.end method

.method public abstract query(Z[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public abstract setTransactionSuccessful()V
.end method

.method public abstract update(Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
