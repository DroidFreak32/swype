.class public Lcom/fsck/k9/mail/store/LocalStore$AttachmentInfo;
.super Ljava/lang/Object;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AttachmentInfo"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1047
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
