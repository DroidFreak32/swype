.class public Lcom/nuance/swype/input/dlm/DlmCategory;
.super Ljava/lang/Object;
.source "DlmCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/swype/input/dlm/DlmCategory$Builder;
    }
.end annotation


# instance fields
.field private final categoryID:I

.field private final coreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;


# direct methods
.method private constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;I)V
    .registers 3
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "categoryID"    # I

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    .line 24
    iput p2, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->categoryID:I

    .line 25
    return-void
.end method

.method synthetic constructor <init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;ILcom/nuance/swype/input/dlm/DlmCategory$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/nuance/swype/input/dlm/DlmCategory$1;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/nuance/swype/input/dlm/DlmCategory;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;I)V

    return-void
.end method


# virtual methods
.method public addWord(Ljava/lang/String;)V
    .registers 4
    .param p1, "word"    # Ljava/lang/String;

    .prologue
    .line 32
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v1, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->categoryID:I

    invoke-virtual {v0, v1, p1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->addDlmCategoryWord(ILjava/lang/String;)Z

    .line 33
    return-void
.end method

.method public delete()V
    .registers 3

    .prologue
    .line 28
    iget-object v0, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->coreInput:Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;

    iget v1, p0, Lcom/nuance/swype/input/dlm/DlmCategory;->categoryID:I

    invoke-virtual {v0, v1}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->deleteDlmCategory(I)Z

    .line 29
    return-void
.end method
