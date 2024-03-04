.class public interface abstract Lcom/fsck/k9/mail/store/StorageManager$StorageListener;
.super Ljava/lang/Object;
.source "StorageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/StorageManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "StorageListener"
.end annotation


# virtual methods
.method public abstract onMount(Ljava/lang/String;)V
.end method

.method public abstract onUnmount(Ljava/lang/String;)V
.end method
