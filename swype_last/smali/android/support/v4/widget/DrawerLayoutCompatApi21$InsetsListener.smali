.class final Landroid/support/v4/widget/DrawerLayoutCompatApi21$InsetsListener;
.super Ljava/lang/Object;
.source "DrawerLayoutCompatApi21.java"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/widget/DrawerLayoutCompatApi21;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InsetsListener"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "insets"    # Landroid/view/WindowInsets;

    .prologue
    .line 89
    check-cast p1, Landroid/support/v4/widget/DrawerLayoutImpl;

    .line 90
    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p2}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v0, 0x1

    :goto_9
    invoke-interface {p1, p2, v0}, Landroid/support/v4/widget/DrawerLayoutImpl;->setChildInsets(Ljava/lang/Object;Z)V

    .line 91
    invoke-virtual {p2}, Landroid/view/WindowInsets;->consumeSystemWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0

    .line 90
    :cond_11
    const/4 v0, 0x0

    goto :goto_9
.end method
