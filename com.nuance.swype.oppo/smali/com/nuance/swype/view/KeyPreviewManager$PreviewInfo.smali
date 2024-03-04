.class final Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
.super Ljava/lang/Object;
.source "KeyPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/KeyPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PreviewInfo"
.end annotation


# instance fields
.field state:I

.field timer:Lcom/nuance/swype/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/Callback",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field view:Lcom/nuance/swype/widget/PreviewView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "hideDelay"    # I

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 53
    if-eqz p2, :cond_0

    .line 54
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nuance/swype/widget/PreviewView;

    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 60
    :goto_0
    new-instance v0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;

    invoke-direct {v0, p0}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;-><init>(Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;)V

    int-to-long v2, p3

    new-instance v1, Lcom/nuance/swype/util/Callback;

    invoke-direct {v1, v0, v2, v3}, Lcom/nuance/swype/util/Callback;-><init>(Ljava/lang/Runnable;J)V

    iput-object v1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    .line 66
    return-void

    .line 57
    :cond_0
    new-instance v0, Lcom/nuance/swype/widget/PreviewView;

    invoke-direct {v0, p1}, Lcom/nuance/swype/widget/PreviewView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    goto :goto_0
.end method


# virtual methods
.method public final hideNow()V
    .locals 2

    .prologue
    .line 69
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 70
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/PreviewView;->setVisibility(I)V

    .line 71
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 72
    return-void
.end method
