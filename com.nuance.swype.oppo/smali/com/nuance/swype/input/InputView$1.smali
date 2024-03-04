.class Lcom/nuance/swype/input/InputView$1;
.super Ljava/lang/Object;
.source "InputView.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/InputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/InputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/InputView;)V
    .locals 0

    .prologue
    .line 1638
    iput-object p1, p0, Lcom/nuance/swype/input/InputView$1;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 1648
    const/4 v0, 0x0

    return v0
.end method

.method public onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 1642
    iget-object v0, p0, Lcom/nuance/swype/input/InputView$1;->this$0:Lcom/nuance/swype/input/InputView;

    invoke-static {v0}, Lcom/nuance/swype/input/InputView;->access$000(Lcom/nuance/swype/input/InputView;)V

    .line 1643
    const/4 v0, 0x0

    return v0
.end method
