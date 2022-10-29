.class final Lcom/nuance/nmdp/speechkit/util/JobRunner$PendingRunnable;
.super Ljava/lang/Object;
.source "JobRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/JobRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PendingRunnable"
.end annotation


# instance fields
.field public final Delay:I

.field public final Runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;I)V
    .registers 3
    .param p1, "r"    # Ljava/lang/Runnable;
    .param p2, "delay"    # I

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$PendingRunnable;->Runnable:Ljava/lang/Runnable;

    .line 15
    iput p2, p0, Lcom/nuance/nmdp/speechkit/util/JobRunner$PendingRunnable;->Delay:I

    .line 16
    return-void
.end method
