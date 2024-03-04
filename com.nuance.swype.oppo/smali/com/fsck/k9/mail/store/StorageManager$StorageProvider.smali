.class public interface abstract Lcom/fsck/k9/mail/store/StorageManager$StorageProvider;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageProvider"
.end annotation


# virtual methods
.method public abstract getAttachmentDirectory(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getDatabase(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
.end method

.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract getName(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getRoot(Landroid/content/Context;)Ljava/io/File;
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isReady(Landroid/content/Context;)Z
.end method

.method public abstract isSupported(Landroid/content/Context;)Z
.end method
