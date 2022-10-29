.class Lcom/nuance/swype/input/ads/Billboard$2;
.super Ljava/lang/Object;
.source "Billboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/ads/Billboard;->setup(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/ads/Billboard;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/ads/Billboard;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/ads/Billboard;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/nuance/swype/input/ads/Billboard$2;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$2;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    # getter for: Lcom/nuance/swype/input/ads/Billboard;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/nuance/swype/input/ads/Billboard;->access$100(Lcom/nuance/swype/input/ads/Billboard;)Landroid/content/Context;

    invoke-static {}, Lcom/nuance/swype/usagedata/UsageData;->recordBillboardClose$faab20d()V

    .line 90
    iget-object v0, p0, Lcom/nuance/swype/input/ads/Billboard$2;->this$0:Lcom/nuance/swype/input/ads/Billboard;

    invoke-virtual {v0}, Lcom/nuance/swype/input/ads/Billboard;->requestHide()V

    .line 91
    return-void
.end method
