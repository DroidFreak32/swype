.class public interface abstract Lcom/fsck/k9/mail/store/LockableDatabase$SchemaDefinition;
.super Ljava/lang/Object;
.source "LockableDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LockableDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SchemaDefinition"
.end annotation


# virtual methods
.method public abstract doDbUpgrade(Landroid/database/sqlite/SQLiteDatabase;)V
.end method

.method public abstract getVersion()I
.end method
