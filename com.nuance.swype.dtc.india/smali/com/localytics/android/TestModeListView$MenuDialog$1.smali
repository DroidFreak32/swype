.class Lcom/localytics/android/TestModeListView$MenuDialog$1;
.super Ljava/lang/Object;
.source "TestModeListView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/localytics/android/TestModeListView$MenuDialog;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/localytics/android/TestModeListView$MenuDialog;


# direct methods
.method constructor <init>(Lcom/localytics/android/TestModeListView$MenuDialog;)V
    .locals 0

    .prologue
    .line 476
    iput-object p1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 480
    if-nez p3, :cond_1

    .line 482
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/localytics/android/Constants;->setTestModeEnabled(Z)V

    .line 483
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView;->dismiss()V

    .line 519
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    invoke-virtual {v1}, Lcom/localytics/android/TestModeListView$MenuDialog;->dismiss()V

    .line 520
    return-void

    .line 485
    :cond_1
    const/4 v1, 0x1

    if-ne p3, v1, :cond_2

    .line 487
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 489
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    .line 490
    .local v0, "callable":Lcom/localytics/android/MarketingCallable;
    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0, v3}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 496
    .end local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    :cond_2
    const/4 v1, 0x2

    if-ne p3, v1, :cond_3

    .line 498
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 500
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    .line 501
    .restart local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0, v3}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 507
    .end local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    :cond_3
    const/4 v1, 0x3

    if-ne p3, v1, :cond_0

    .line 509
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 511
    iget-object v1, p0, Lcom/localytics/android/TestModeListView$MenuDialog$1;->this$1:Lcom/localytics/android/TestModeListView$MenuDialog;

    iget-object v1, v1, Lcom/localytics/android/TestModeListView$MenuDialog;->this$0:Lcom/localytics/android/TestModeListView;

    invoke-static {v1}, Lcom/localytics/android/TestModeListView;->access$200(Lcom/localytics/android/TestModeListView;)Ljava/util/Map;

    move-result-object v1

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/localytics/android/MarketingCallable;

    .line 512
    .restart local v0    # "callable":Lcom/localytics/android/MarketingCallable;
    if-eqz v0, :cond_0

    .line 514
    invoke-virtual {v0, v3}, Lcom/localytics/android/MarketingCallable;->call([Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
