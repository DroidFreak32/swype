.class public final Landroid/support/v4/os/ResultReceiver$MyRunnable;
.super Ljava/lang/Object;
.source "ResultReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/os/ResultReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyRunnable"
.end annotation


# instance fields
.field final mResultCode:I

.field final mResultData:Landroid/os/Bundle;

.field final synthetic this$0:Landroid/support/v4/os/ResultReceiver;


# direct methods
.method public constructor <init>(Landroid/support/v4/os/ResultReceiver;ILandroid/os/Bundle;)V
    .registers 4
    .param p1, "this$0"    # Landroid/support/v4/os/ResultReceiver;
    .param p2, "resultCode"    # I
    .param p3, "resultData"    # Landroid/os/Bundle;

    .prologue
    .line 50
    iput-object p1, p0, Landroid/support/v4/os/ResultReceiver$MyRunnable;->this$0:Landroid/support/v4/os/ResultReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p2, p0, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultCode:I

    .line 52
    iput-object p3, p0, Landroid/support/v4/os/ResultReceiver$MyRunnable;->mResultData:Landroid/os/Bundle;

    .line 53
    return-void
.end method


# virtual methods
.method public final run()V
    .registers 1

    .prologue
    .line 56
    invoke-static {}, Landroid/support/v4/os/ResultReceiver;->onReceiveResult$68e2e3e6()V

    .line 57
    return-void
.end method
