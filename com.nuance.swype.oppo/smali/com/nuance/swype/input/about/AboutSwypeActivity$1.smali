.class Lcom/nuance/swype/input/about/AboutSwypeActivity$1;
.super Ljava/lang/Object;
.source "AboutSwypeActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/about/AboutSwypeActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/about/AboutSwypeActivity;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/about/AboutSwypeActivity;)V
    .locals 0

    .prologue
    .line 13
    iput-object p1, p0, Lcom/nuance/swype/input/about/AboutSwypeActivity$1;->this$0:Lcom/nuance/swype/input/about/AboutSwypeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/nuance/swype/input/about/AboutSwypeActivity$1;->this$0:Lcom/nuance/swype/input/about/AboutSwypeActivity;

    invoke-virtual {v0}, Lcom/nuance/swype/input/about/AboutSwypeActivity;->showOpenSourceAttribution()V

    .line 16
    return-void
.end method
