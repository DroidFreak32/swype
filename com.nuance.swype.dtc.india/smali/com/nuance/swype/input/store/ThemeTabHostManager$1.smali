.class Lcom/nuance/swype/input/store/ThemeTabHostManager$1;
.super Ljava/lang/Object;
.source "ThemeTabHostManager.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/store/ThemeTabHostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/store/ThemeTabHostManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/store/ThemeTabHostManager;

    .prologue
    .line 830
    iput-object p1, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 834
    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    move v4, v5

    .line 857
    :goto_0
    return v4

    .line 836
    :pswitch_0
    iget v6, p1, Landroid/os/Message;->arg1:I

    .line 837
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 838
    .local v1, "pos":I
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->access$000(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v6

    invoke-virtual {v6}, Lcom/nuance/swype/input/IMEApplication;->getDisplayWidth()I

    move-result v2

    .line 839
    .local v2, "screenWidth":I
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->access$100(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/TabHost;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 840
    .local v3, "width":I
    const/4 v0, 0x3

    .line 841
    .local v0, "availableTabCount":I
    if-lez v3, :cond_0

    .line 842
    div-int v0, v2, v3

    .line 846
    :goto_1
    sget-object v6, Lcom/nuance/swype/input/store/ThemeTabHostManager;->log:Lcom/nuance/swype/util/LogManager$Log;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "MSG_DELAY_SCROLL_VIEW_TABS...tab width:  "

    aput-object v8, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v4

    const/4 v8, 0x2

    const-string/jumbo v9, "...availableTabCount: "

    aput-object v9, v7, v8

    const/4 v8, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v6, v7}, Lcom/nuance/swype/util/LogManager$Log;->d([Ljava/lang/Object;)V

    .line 848
    invoke-static {}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->isCurrentlyRtl()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 849
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->access$200(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    iget-object v7, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {v7}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->access$100(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/TabHost;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabHost;->getTabWidget()Landroid/widget/TabWidget;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TabWidget;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    sub-int/2addr v7, v1

    mul-int/2addr v7, v3

    invoke-virtual {v6, v7, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 844
    :cond_0
    div-int/lit8 v3, v2, 0x3

    goto :goto_1

    .line 851
    :cond_1
    iget-object v6, p0, Lcom/nuance/swype/input/store/ThemeTabHostManager$1;->this$0:Lcom/nuance/swype/input/store/ThemeTabHostManager;

    invoke-static {v6}, Lcom/nuance/swype/input/store/ThemeTabHostManager;->access$200(Lcom/nuance/swype/input/store/ThemeTabHostManager;)Landroid/widget/HorizontalScrollView;

    move-result-object v6

    mul-int v7, v1, v3

    invoke-virtual {v6, v7, v5}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 834
    nop

    :pswitch_data_0
    .packed-switch 0x186a0
        :pswitch_0
    .end packed-switch
.end method
