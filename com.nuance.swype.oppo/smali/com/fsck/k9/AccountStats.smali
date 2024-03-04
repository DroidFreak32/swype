.class public final Lcom/fsck/k9/AccountStats;
.super Ljava/lang/Object;
.source "AccountStats.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public flaggedMessageCount:I

.field public size:J

.field public unreadMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/fsck/k9/AccountStats;->unreadMessageCount:I

    .line 12
    iput v0, p0, Lcom/fsck/k9/AccountStats;->flaggedMessageCount:I

    return-void
.end method
