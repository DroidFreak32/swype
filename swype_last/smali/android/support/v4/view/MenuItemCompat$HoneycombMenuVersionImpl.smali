.class Landroid/support/v4/view/MenuItemCompat$HoneycombMenuVersionImpl;
.super Ljava/lang/Object;
.source "MenuItemCompat.java"

# interfaces
.implements Landroid/support/v4/view/MenuItemCompat$MenuVersionImpl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/MenuItemCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "HoneycombMenuVersionImpl"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public expandActionView(Landroid/view/MenuItem;)Z
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public final setActionView(Landroid/view/MenuItem;I)Landroid/view/MenuItem;
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "resId"    # I

    .prologue
    .line 171
    .line 1035
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 171
    return-object v0
.end method

.method public final setActionView(Landroid/view/MenuItem;Landroid/view/View;)Landroid/view/MenuItem;
    .registers 4
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 166
    .line 1031
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move-result-object v0

    .line 166
    return-object v0
.end method

.method public final setShowAsAction(Landroid/view/MenuItem;I)V
    .registers 3
    .param p1, "item"    # Landroid/view/MenuItem;
    .param p2, "actionEnum"    # I

    .prologue
    .line 161
    .line 1027
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 162
    return-void
.end method
