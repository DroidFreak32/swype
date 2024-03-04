.class public final Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;
.super Ljava/lang/Object;
.source "KeyPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/KeyPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StyleParams"
.end annotation


# instance fields
.field protected final postReleaseHideDelay:I

.field protected final previewViewLayoutId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "a"    # Landroid/content/res/TypedArray;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    sget v0, Lcom/nuance/swype/input/R$styleable;->KeyboardViewEx_keyPreviewLayout:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->previewViewLayoutId:I

    .line 122
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/nuance/swype/input/R$integer;->preview_popup_hide_delay:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$StyleParams;->postReleaseHideDelay:I

    .line 123
    return-void
.end method
