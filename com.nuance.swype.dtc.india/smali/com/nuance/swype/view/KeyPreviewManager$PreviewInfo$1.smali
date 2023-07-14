.class final Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;
.super Ljava/lang/Object;
.source "KeyPreviewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;-><init>(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;


# direct methods
.method constructor <init>(Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;->this$0:Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo$1;->this$0:Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;

    invoke-virtual {v0}, Lcom/nuance/swype/view/KeyPreviewManager$PreviewInfo;->hideNow()V

    .line 73
    return-void
.end method
