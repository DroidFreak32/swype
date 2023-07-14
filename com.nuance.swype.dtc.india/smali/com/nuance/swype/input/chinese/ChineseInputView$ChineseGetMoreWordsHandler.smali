.class Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;
.super Ljava/lang/Object;
.source "ChineseInputView.java"

# interfaces
.implements Lcom/nuance/swype/input/chinese/CJKCandidatesListView$GetMoreWordsHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/chinese/ChineseInputView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ChineseGetMoreWordsHandler"
.end annotation


# instance fields
.field mCIV:Lcom/nuance/swype/input/chinese/ChineseInputView;


# direct methods
.method constructor <init>(Lcom/nuance/swype/input/chinese/ChineseInputView;)V
    .locals 0
    .param p1, "civ"    # Lcom/nuance/swype/input/chinese/ChineseInputView;

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 229
    iput-object p1, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/swype/input/chinese/ChineseInputView;

    .line 230
    return-void
.end method


# virtual methods
.method public requestMoreWords()V
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/nuance/swype/input/chinese/ChineseInputView$ChineseGetMoreWordsHandler;->mCIV:Lcom/nuance/swype/input/chinese/ChineseInputView;

    invoke-virtual {v0}, Lcom/nuance/swype/input/chinese/ChineseInputView;->postAddMoreSuggestions()V

    .line 234
    return-void
.end method
