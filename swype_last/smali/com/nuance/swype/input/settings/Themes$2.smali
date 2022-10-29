.class Lcom/nuance/swype/input/settings/Themes$2;
.super Ljava/lang/Object;
.source "Themes.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/settings/Themes;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ZLjava/lang/String;Ljava/lang/String;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/Themes;

.field final synthetic val$seed:Lcom/nuance/swype/util/storage/ThemeItemSeed;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/Themes;Lcom/nuance/swype/util/storage/ThemeItemSeed;)V
    .registers 3
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/Themes;

    .prologue
    .line 183
    iput-object p1, p0, Lcom/nuance/swype/input/settings/Themes$2;->this$0:Lcom/nuance/swype/input/settings/Themes;

    iput-object p2, p0, Lcom/nuance/swype/input/settings/Themes$2;->val$seed:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 186
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$2;->val$seed:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 1250
    iget-boolean v0, v0, Lcom/nuance/swype/util/storage/ThemeItemSeed;->isPurchasable:Z

    .line 186
    if-eqz v0, :cond_14

    .line 187
    iget-object v0, p0, Lcom/nuance/swype/input/settings/Themes$2;->this$0:Lcom/nuance/swype/input/settings/Themes;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/nuance/swype/input/settings/Themes$2;->val$seed:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 2162
    iget-object v2, v2, Lcom/nuance/swype/util/storage/ThemeItemSeed;->sku:Ljava/lang/String;

    .line 187
    iget-object v3, p0, Lcom/nuance/swype/input/settings/Themes$2;->val$seed:Lcom/nuance/swype/util/storage/ThemeItemSeed;

    .line 3120
    iget-object v3, v3, Lcom/nuance/swype/util/storage/ThemeItemSeed;->categoryKey:Ljava/lang/String;

    .line 187
    invoke-virtual {v0, v1, v2, v3}, Lcom/nuance/swype/input/settings/Themes;->showPurchaseFlowDialog(ILjava/lang/String;Ljava/lang/String;)V

    .line 189
    :cond_14
    return-void
.end method
