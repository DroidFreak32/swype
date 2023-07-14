.class Lcom/nuance/swype/input/settings/HorizontalListView$2;
.super Landroid/database/DataSetObserver;
.source "HorizontalListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/settings/HorizontalListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/settings/HorizontalListView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/settings/HorizontalListView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/settings/HorizontalListView;

    .prologue
    .line 351
    iput-object p1, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 2

    .prologue
    .line 354
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$202(Lcom/nuance/swype/input/settings/HorizontalListView;Z)Z

    .line 358
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$300(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 361
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 362
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 363
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$300(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 370
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-static {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->access$400(Lcom/nuance/swype/input/settings/HorizontalListView;)V

    .line 373
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->invalidate()V

    .line 374
    iget-object v0, p0, Lcom/nuance/swype/input/settings/HorizontalListView$2;->this$0:Lcom/nuance/swype/input/settings/HorizontalListView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/settings/HorizontalListView;->requestLayout()V

    .line 375
    return-void
.end method
