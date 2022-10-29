.class public Lcom/nuance/swype/widget/directional/DirectionalImageView;
.super Landroid/widget/ImageView;
.source "DirectionalImageView.java"

# interfaces
.implements Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 10
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method


# virtual methods
.method public final baseCreateDrawableState(I)[I
    .registers 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onCreateDrawableState(I)[I

    move-result-object v0

    return-object v0
.end method

.method public onCreateDrawableState(I)[I
    .registers 3
    .param p1, "extraSpace"    # I

    .prologue
    .line 29
    invoke-static {p0, p1}, Lcom/nuance/swype/widget/directional/DirectionalUtil;->onCreateDrawableState(Lcom/nuance/swype/widget/directional/DirectionalUtil$OnCreateDrawableStateCallback;I)[I

    move-result-object v0

    return-object v0
.end method

.method public onLayout(ZIIII)V
    .registers 6
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 23
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 24
    invoke-virtual {p0}, Lcom/nuance/swype/widget/directional/DirectionalImageView;->refreshDrawableState()V

    .line 25
    return-void
.end method
