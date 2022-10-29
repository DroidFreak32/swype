.class Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;
.super Landroid/widget/BaseAdapter;
.source "SpringConfiguratorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rebound/ui/SpringConfiguratorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SpinnerAdapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mStrings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;


# direct methods
.method public constructor <init>(Lcom/facebook/rebound/ui/SpringConfiguratorView;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 366
    iput-object p1, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 367
    iput-object p2, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mContext:Landroid/content/Context;

    .line 368
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    .line 369
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .registers 3
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 387
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 388
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->notifyDataSetChanged()V

    .line 389
    return-void
.end method

.method public clear()V
    .registers 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 396
    invoke-virtual {p0}, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->notifyDataSetChanged()V

    .line 397
    return-void
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "position"    # I

    .prologue
    .line 378
    iget-object v0, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "position"    # I

    .prologue
    .line 383
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v4, -0x1

    .line 402
    if-nez p2, :cond_36

    .line 403
    new-instance v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 404
    .local v1, "textView":Landroid/widget/TextView;
    new-instance v0, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 407
    .local v0, "params":Landroid/widget/AbsListView$LayoutParams;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 408
    const/high16 v3, 0x41400000    # 12.0f

    iget-object v4, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    invoke-virtual {v4}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/facebook/rebound/ui/Util;->dpToPx(FLandroid/content/res/Resources;)I

    move-result v2

    .line 409
    .local v2, "twelvePx":I
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 410
    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->this$0:Lcom/facebook/rebound/ui/SpringConfiguratorView;

    # getter for: Lcom/facebook/rebound/ui/SpringConfiguratorView;->mTextColor:I
    invoke-static {v3}, Lcom/facebook/rebound/ui/SpringConfiguratorView;->access$1500(Lcom/facebook/rebound/ui/SpringConfiguratorView;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 414
    .end local v0    # "params":Landroid/widget/AbsListView$LayoutParams;
    .end local v2    # "twelvePx":I
    :goto_2a
    iget-object v3, p0, Lcom/facebook/rebound/ui/SpringConfiguratorView$SpinnerAdapter;->mStrings:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 415
    return-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_36
    move-object v1, p2

    .line 412
    check-cast v1, Landroid/widget/TextView;

    .restart local v1    # "textView":Landroid/widget/TextView;
    goto :goto_2a
.end method
