.class final Lcom/nuance/swype/inapp/util/IabHelper$2$1;
.super Ljava/lang/Object;
.source "IabHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/inapp/util/IabHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic this$1:Lcom/nuance/swype/inapp/util/IabHelper$2;

.field private synthetic val$inv_f:Lcom/nuance/swype/inapp/util/Inventory;

.field private synthetic val$result_f:Lcom/nuance/swype/inapp/util/IabResult;


# direct methods
.method constructor <init>(Lcom/nuance/swype/inapp/util/IabHelper$2;Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V
    .locals 0

    .prologue
    .line 680
    iput-object p1, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->this$1:Lcom/nuance/swype/inapp/util/IabHelper$2;

    iput-object p2, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->val$result_f:Lcom/nuance/swype/inapp/util/IabResult;

    iput-object p3, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->val$inv_f:Lcom/nuance/swype/inapp/util/Inventory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 683
    iget-object v0, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->this$1:Lcom/nuance/swype/inapp/util/IabHelper$2;

    iget-object v0, v0, Lcom/nuance/swype/inapp/util/IabHelper$2;->val$listener:Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;

    iget-object v1, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->val$result_f:Lcom/nuance/swype/inapp/util/IabResult;

    iget-object v2, p0, Lcom/nuance/swype/inapp/util/IabHelper$2$1;->val$inv_f:Lcom/nuance/swype/inapp/util/Inventory;

    invoke-virtual {v0, v1, v2}, Lcom/nuance/swype/inapp/util/IabHelper$QueryInventoryFinishedListener;->onQueryInventoryFinished(Lcom/nuance/swype/inapp/util/IabResult;Lcom/nuance/swype/inapp/util/Inventory;)V

    .line 684
    return-void
.end method
