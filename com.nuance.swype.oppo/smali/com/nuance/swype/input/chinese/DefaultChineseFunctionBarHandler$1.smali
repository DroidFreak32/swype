.class Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;
.super Ljava/lang/Object;
.source "DefaultChineseFunctionBarHandler.java"

# interfaces
.implements Lcom/nuance/swype/input/ChinaNetworkNotificationDialog$ChinaNetworkNotificationDialogListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->showAddOnDictionary()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;->this$0:Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeButtonClick()Z
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onPositiveButtonClick()Z
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler$1;->this$0:Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;

    invoke-static {v0}, Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;->access$000(Lcom/nuance/swype/input/chinese/DefaultChineseFunctionBarHandler;)V

    .line 105
    const/4 v0, 0x0

    return v0
.end method
