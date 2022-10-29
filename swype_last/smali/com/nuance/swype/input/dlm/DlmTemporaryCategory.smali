.class public Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;
.super Ljava/lang/Object;
.source "DlmTemporaryCategory.java"


# static fields
.field private static final CATEGORY_ID:I = 0xff66


# instance fields
.field dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)V
    .registers 3
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    if-eqz v0, :cond_9

    .line 23
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    invoke-virtual {v0, p1}, Lcom/nuance/swype/input/dlm/DlmCategory;->addWord(Ljava/lang/String;)V

    .line 25
    :cond_9
    return-void
.end method

.method public create(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;)V
    .registers 6
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .prologue
    .line 14
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    if-eqz v0, :cond_7

    .line 15
    invoke-virtual {p0}, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->destroy()V

    .line 18
    :cond_7
    new-instance v0, Lcom/nuance/swype/input/dlm/DlmCategory$Builder;

    invoke-direct {v0}, Lcom/nuance/swype/input/dlm/DlmCategory$Builder;-><init>()V

    const v1, 0xff66

    const-string/jumbo v2, "Session.Category"

    const-string/jumbo v3, "Temporary"

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/nuance/swype/input/dlm/DlmCategory$Builder;->create(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;ILjava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/dlm/DlmCategory;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    .line 19
    return-void
.end method

.method public destroy()V
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    if-eqz v0, :cond_c

    .line 29
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    invoke-virtual {v0}, Lcom/nuance/swype/input/dlm/DlmCategory;->delete()V

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/swype/input/dlm/DlmTemporaryCategory;->dlmCategory:Lcom/nuance/swype/input/dlm/DlmCategory;

    .line 32
    :cond_c
    return-void
.end method
