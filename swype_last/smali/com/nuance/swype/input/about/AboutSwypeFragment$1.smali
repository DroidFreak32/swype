.class Lcom/nuance/swype/input/about/AboutSwypeFragment$1;
.super Ljava/lang/Object;
.source "AboutSwypeFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/about/AboutSwypeFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/about/AboutSwypeFragment;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/about/AboutSwypeFragment;)V
    .registers 2
    .param p1, "this$0"    # Lcom/nuance/swype/input/about/AboutSwypeFragment;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/nuance/swype/input/about/AboutSwypeFragment$1;->this$0:Lcom/nuance/swype/input/about/AboutSwypeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutSwypeFragment$1;->this$0:Lcom/nuance/swype/input/about/AboutSwypeFragment;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/about/AboutSwypeFragment;->showOpenSourceAttribution(Landroid/content/Context;)V

    .line 21
    return-void
.end method
