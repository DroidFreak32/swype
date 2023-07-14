.class Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;
.super Ljava/lang/Object;
.source "JapaneseHandWritingInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->showGridCandidatesView(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    .prologue
    .line 1213
    iput-object p1, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    invoke-static {v0}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->access$1100(Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;)V

    .line 1218
    iget-object v0, p0, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView$4;->this$0:Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/nuance/swype/input/japanese/JapaneseHandWritingInputView;->setCandidatesViewShown(Z)V

    .line 1219
    return-void
.end method
