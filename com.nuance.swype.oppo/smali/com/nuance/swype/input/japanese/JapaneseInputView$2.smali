.class Lcom/nuance/swype/input/japanese/JapaneseInputView$2;
.super Ljava/lang/Object;
.source "JapaneseInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V
    .locals 0

    .prologue
    .line 2870
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 2874
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$400(Lcom/nuance/swype/input/japanese/JapaneseInputView;)V

    .line 2875
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$500(Lcom/nuance/swype/input/japanese/JapaneseInputView;Z)V

    .line 2877
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->access$600(Lcom/nuance/swype/input/japanese/JapaneseInputView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2878
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseInputView$2;->this$0:Lcom/nuance/swype/input/japanese/JapaneseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/japanese/JapaneseInputView;->showSegmentationPopup()V

    .line 2880
    :cond_0
    return-void
.end method
