.class public Lcom/nuance/swype/input/dlm/DlmCategory$Builder;
.super Ljava/lang/Object;
.source "DlmCategory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/swype/input/dlm/DlmCategory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;ILjava/lang/String;Ljava/lang/String;)Lcom/nuance/swype/input/dlm/DlmCategory;
    .registers 7
    .param p1, "coreInput"    # Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;
    .param p2, "categoryID"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "info"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p1, p2, p3, p4}, Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;->createDlmCategoryInfo(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 15
    new-instance v0, Lcom/nuance/swype/input/dlm/DlmCategory;

    invoke-direct {v0, p1, p2, v1}, Lcom/nuance/swype/input/dlm/DlmCategory;-><init>(Lcom/nuance/input/swypecorelib/XT9CoreAlphaInput;ILcom/nuance/swype/input/dlm/DlmCategory$1;)V

    .line 18
    :goto_c
    return-object v0

    :cond_d
    move-object v0, v1

    goto :goto_c
.end method
