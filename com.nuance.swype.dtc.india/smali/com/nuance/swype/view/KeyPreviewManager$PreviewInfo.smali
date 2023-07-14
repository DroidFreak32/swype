.class public final Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;
.super Ljava/lang/Object;
.source "KeyPreviewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/view/KeyPreviewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PreviewInfo"
.end annotation


# instance fields
.field public state:I

.field public timer:Lcom/nuance/swype/util/Callback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/nuance/swype/util/Callback",
            "<+",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field public view:Lcom/nuance/swype/widget/PreviewView;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "layoutId"    # I
    .param p3, "hideDelay"    # I

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const/4 v1, 0x0

    iput v1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 59
    if-eqz p2, :cond_0

    .line 1054
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 1055
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/nuance/swype/input/IMEApplication;->getThemedLayoutInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 61
    .local v0, "inflater":Landroid/view/LayoutInflater;
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/nuance/swype/plugin/ThemeLoader;->setLayoutInflaterFactory(Landroid/view/LayoutInflater;)V

    .line 62
    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/nuance/swype/widget/PreviewView;

    iput-object v1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    .line 63
    invoke-static {p1}, Lcom/nuance/swype/input/IMEApplication;->from(Landroid/content/Context;)Lcom/nuance/swype/input/IMEApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/nuance/swype/input/IMEApplication;->getThemeLoader()Lcom/nuance/swype/plugin/ThemeLoader;

    move-result-object v1

    iget-object v2, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v1, v2}, Lcom/nuance/swype/plugin/ThemeLoader;->applyTheme(Landroid/view/View;)V

    .line 69
    .end local v0    # "inflater":Landroid/view/LayoutInflater;
    :goto_0
    new-instance v1, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;

    invoke-direct {v1, p0}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;-><init>(Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;)V

    int-to-long v2, p3

    invoke-static {v1, v2, v3}, Lcom/nuance/swype/util/Callback;->create$afe0100(Ljava/lang/Runnable;J)Lcom/nuance/swype/util/Callback;

    move-result-object v1

    iput-object v1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    .line 75
    return-void

    .line 66
    :cond_0
    new-instance v1, Lcom/nuance/swype/widget/PreviewView;

    invoke-direct {v1, p1}, Lcom/nuance/swype/widget/PreviewView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    goto :goto_0
.end method


# virtual methods
.method public final hideNow()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->state:I

    .line 79
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/nuance/swype/widget/PreviewView;->setVisibility(I)V

    .line 81
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->view:Lcom/nuance/swype/widget/PreviewView;

    invoke-virtual {v0}, Lcom/nuance/swype/widget/PreviewView;->requestLayout()V

    .line 82
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->timer:Lcom/nuance/swype/util/Callback;

    invoke-virtual {v0}, Lcom/nuance/swype/util/Callback;->stop()V

    .line 83
    return-void
.end method
